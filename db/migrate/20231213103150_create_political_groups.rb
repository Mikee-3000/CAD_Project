class CreatePoliticalGroups < ActiveRecord::Migration[7.0]
  def change
    drop_table :political_groups, if_exists: true
    create_table :political_groups, if_not_exists: true  do |t|
      t.string :name
      t.string :abbreviation
      t.text :description
      t.string :president
      t.integer :current_meps
      t.string :website

      t.timestamps
    end
  end
end
