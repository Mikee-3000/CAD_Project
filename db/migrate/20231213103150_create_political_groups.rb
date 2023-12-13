class CreatePoliticalGroups < ActiveRecord::Migration[7.0]
  def change
    drop_table :political_groups
    create_table :political_groups do |t|
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
