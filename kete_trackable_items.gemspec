# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{kete_trackable_items}
  s.version = "0.0.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Walter McGinnis", "Noel Gomez", "Chris Toynbee"]
  s.date = %q{2012-07-23}
  s.description = %q{A Kete application add-on that allows for tracking the location of an item in a physical archive that corresponds to the item in the Kete application.}
  s.email = %q{walter@katipo.co.nz}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.rdoc"
  ]
  s.files = [
    ".document",
     ".gitignore",
     ".specification",
     "Gemfile",
     "Gemfile.lock",
     "LICENSE",
     "README.rdoc",
     "Rakefile",
     "VERSION",
     "app/controllers/on_loan_organizations_controller.rb",
     "app/controllers/repositories_controller.rb",
     "app/controllers/shelf_locations_controller.rb",
     "app/controllers/trackable_item_shelf_locations_controller.rb",
     "app/controllers/tracked_items_controller.rb",
     "app/controllers/tracking_events_controller.rb",
     "app/controllers/tracking_lists_controller.rb",
     "app/helpers/on_loan_organizations_helper.rb",
     "app/helpers/trackable_item_shelf_locations_helper.rb",
     "app/helpers/trackable_items_helper.rb",
     "app/models/on_loan_organization.rb",
     "app/models/repository.rb",
     "app/models/shelf_location.rb",
     "app/models/trackable_item_shelf_location.rb",
     "app/models/tracked_item.rb",
     "app/models/tracking_event.rb",
     "app/models/tracking_list.rb",
     "app/views/on_loan_organizations/_form.html.erb",
     "app/views/on_loan_organizations/_on_loan_organization.html.erb",
     "app/views/on_loan_organizations/_on_loan_organizations.html.erb",
     "app/views/on_loan_organizations/edit.html.erb",
     "app/views/on_loan_organizations/index.html.erb",
     "app/views/on_loan_organizations/new.html.erb",
     "app/views/on_loan_organizations/show.html.erb",
     "app/views/repositories/_form.html.erb",
     "app/views/repositories/edit.html.erb",
     "app/views/repositories/index.html.erb",
     "app/views/repositories/new.html.erb",
     "app/views/repositories/show.html.erb",
     "app/views/shared/_matching_trackable_item.html.erb",
     "app/views/shared/_tracking.html.erb",
     "app/views/shelf_locations/_event_button.html.erb",
     "app/views/shelf_locations/_form.html.erb",
     "app/views/shelf_locations/_shelf_location.html.erb",
     "app/views/shelf_locations/_shelf_locations.html.erb",
     "app/views/shelf_locations/_trackable_item_shelf_location_trackable_item_pair.html.erb",
     "app/views/shelf_locations/edit.html.erb",
     "app/views/shelf_locations/index.html.erb",
     "app/views/shelf_locations/new.html.erb",
     "app/views/shelf_locations/show.html.erb",
     "app/views/trackable_item_shelf_locations/bulk_allocation.html.erb",
     "app/views/trackable_item_shelf_locations/new.html.erb",
     "app/views/tracked_items/_tracked_item_trackable_item_pair.html.erb",
     "app/views/tracking_events/index.html.erb",
     "app/views/tracking_lists/_event_button.html.erb",
     "app/views/tracking_lists/_form.html.erb",
     "app/views/tracking_lists/_trackable_item_search_form.html.erb",
     "app/views/tracking_lists/_tracking_list.html.erb",
     "app/views/tracking_lists/_tracking_lists.html.erb",
     "app/views/tracking_lists/edit.html.erb",
     "app/views/tracking_lists/index.html.erb",
     "app/views/tracking_lists/show.html.erb",
     "app/views/tracking_lists/show.xls.builder",
     "config/locales/en.yml",
     "config/routes.rb",
     "generators/kete_trackable_items_migrations/USAGE",
     "generators/kete_trackable_items_migrations/kete_trackable_items_migrations_generator.rb",
     "generators/kete_trackable_items_migrations/templates/add_trackable_item_columns_to_topics.rb",
     "generators/kete_trackable_items_migrations/templates/create_on_loan_organizations.rb",
     "generators/kete_trackable_items_migrations/templates/create_repositories.rb",
     "generators/kete_trackable_items_migrations/templates/create_shelf_locations.rb",
     "generators/kete_trackable_items_migrations/templates/create_trackable_item_shelf_locations.rb",
     "generators/kete_trackable_items_migrations/templates/create_tracked_items.rb",
     "generators/kete_trackable_items_migrations/templates/create_tracking_events.rb",
     "generators/kete_trackable_items_migrations/templates/create_tracking_lists.rb",
     "kete_trackable_items.gemspec",
     "lib/bulk_allocation.rb",
     "lib/excel_doc.rb",
     "lib/kete_trackable_items.rb",
     "lib/kete_trackable_items/controller_helpers.rb",
     "lib/kete_trackable_items/extensions/controllers/application_controller.rb",
     "lib/kete_trackable_items/extensions/helpers/application_helper.rb",
     "lib/kete_trackable_items/extensions/models/basket.rb",
     "lib/kete_trackable_items/extensions/models/topic.rb",
     "lib/kete_trackable_items/list_management_controllers.rb",
     "lib/kete_trackable_items/matching_trackable_items_controller_helpers.rb",
     "lib/kete_trackable_items/paginate_set_up.rb",
     "lib/kete_trackable_items/trackable_item.rb",
     "lib/kete_trackable_items/version.rb",
     "lib/kete_trackable_items/workflow_utilities.rb",
     "rails/init.rb"
  ]
  s.homepage = %q{http://github.com/kete/kete_trackable_items}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{A Rails engine gem that works in conjunction with kete_gets_trollied to track where an item (with a corresponding physical archive) is physically located.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_runtime_dependency(%q<kete_gets_trollied>, [">= 0.0.3"])
      s.add_runtime_dependency(%q<workflow>, [">= 0.8.0"])
      s.add_runtime_dependency(%q<ar-extensions>, [">= 0.9.5"])
      s.add_runtime_dependency(%q<rubyXL>, [">= 1.2.10"])
      s.add_runtime_dependency(%q<rubyzip>, [">= 0.9.9"])
    else
      s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
      s.add_dependency(%q<kete_gets_trollied>, [">= 0.0.3"])
      s.add_dependency(%q<workflow>, [">= 0.8.0"])
      s.add_dependency(%q<ar-extensions>, [">= 0.9.5"])
      s.add_dependency(%q<rubyXL>, [">= 1.2.10"])
      s.add_dependency(%q<rubyzip>, [">= 0.9.9"])
    end
  else
    s.add_dependency(%q<thoughtbot-shoulda>, [">= 0"])
    s.add_dependency(%q<kete_gets_trollied>, [">= 0.0.3"])
    s.add_dependency(%q<workflow>, [">= 0.8.0"])
    s.add_dependency(%q<ar-extensions>, [">= 0.9.5"])
    s.add_dependency(%q<rubyXL>, [">= 1.2.10"])
    s.add_dependency(%q<rubyzip>, [">= 0.9.9"])
  end
end

