class CreateOfficials < ActiveRecord::Migration[7.0]
  def change
    drop_table :officials, if_exists: true
    create_table :officials, if_not_exists: true  do |t|
      t.string :name
      t.string :place_of_birth
      t.date :date_of_birth
      t.string :position
      t.string :affiliation
      t.text :bio
      t.string :website
      t.references :institution, null: false, foreign_key: true
      t.references :political_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
