class CreateInstitutions < ActiveRecord::Migration[7.0]
  def change
    drop_table :institutions
    create_table :institutions do |t|
      t.string :name
      t.date :date_established
      t.string :seat
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end
