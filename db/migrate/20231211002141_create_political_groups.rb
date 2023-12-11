class CreatePoliticalGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :political_groups do |t|
      t.string :name
      t.string :abbreviation
      t.text :short_description
      t.string :president
      t.integer :current_meps
      t.string :link_to_website

      t.timestamps
    end
  end
end
