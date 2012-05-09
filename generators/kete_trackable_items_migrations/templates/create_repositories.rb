class CreateRepositories < ActiveRecord::Migration
  def self.up
    create_table :repositories do |t|
      t.integer :basket_id, :null => false
      t.string :name, :null => false

      t.timestamps
    end
  end

  def self.down
    drop_table :repositories
  end
end
