class OnLoanOrganizationsController < ApplicationController
  # Prevents the following error from showing up, common in Rails engines
  # A copy of ApplicationController has been removed from the module tree but is still active!
  unloadable

  before_filter :set_on_loan_organization, :except => [:index, :create, :new]

  def index
    if params[:name_pattern].present?
      @name_pattern = params[:name_pattern]
      pattern_for_sql = @name_pattern.downcase + '%'
      @on_loan_organizations = OnLoanOrganization.find(:all,
                                                       :conditions => ["LOWER(name) like :pattern_for_sql",
                                                                       { :pattern_for_sql => pattern_for_sql }])
    else
      @on_loan_organizations = OnLoanOrganization.all
    end

    respond_to do |format|
      format.html
      format.json  { render :json => @on_loan_organizations }
      format.js do
        render :inline => "<%= auto_complete_result_with_id(@on_loan_organizations, :name) %>"
      end
    end
  end

  def show
  end

  def new
    @on_loan_organization = OnLoanOrganization.new
    @tracking_list = TrackingList.find(params[:tracking_list])
  end

  def edit
  end

  def create
    if params[:tracking_list]
      @tracking_list = TrackingList.find(params[:tracking_list])
    end

    # if we already have a matching on_loan_organization
    # based on name look up, use that
    @on_loan_organization = if params[:on_loan_organization][:id].present?
                              OnLoanOrganization.find(params[:on_loan_organization][:id])
                            else
                              OnLoanOrganization.new(params[:on_loan_organization])
                            end

    if !@on_loan_organization.new_record? || @on_loan_organization.save

      @tracking_list.loan_to(@on_loan_organization) if @tracking_list

      url = if @tracking_list
              repository_tracking_list_url(:id => @tracking_list,
                                           :repository_id => @tracking_list.repository,
                                           :download_modal => true)
            else
              on_loan_organzation_url(:id => @on_loan_organization)
            end
      redirect_to url
    else
      render :action => 'new'
    end
  end

  def update
    if @on_loan_organization.update_attributes(params[:on_loan_organization])
      redirect_to on_loan_organization_url(:id => @on_loan_organization)
    else
      render :action => 'edit'
    end
  end

  def destroy
    @on_loan_organization.destroy

    redirect_to on_loan_organizations_url
  end

  private
  
  def set_on_loan_organization
    @on_loan_organization = OnLoanOrganization.find(params[:id])
  end
end