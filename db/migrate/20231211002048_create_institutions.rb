class CreateInstitutions < ActiveRecord::Migration[7.0]
  def change
    create_table :institutions do |t|
      t.string :name
      t.date :date_established
      t.string :geographical_seat
      t.text :short_description
      t.string :link_to_website

      t.timestamps
    end
  end
end
