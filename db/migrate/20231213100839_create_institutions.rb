class CreateInstitutions < ActiveRecord::Migration[7.0]
  def change
    drop_table :institutions, if_exists: true
    create_table :institutions, if_not_exists: true do |t|
      t.string :name
      t.date :date_established
      t.string :seat
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
