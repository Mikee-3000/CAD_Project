class CreateTreaties < ActiveRecord::Migration[7.0]
  def change
    create_table :treaties, if_not_exists: true  do |t|
      t.string :name
      t.date :date_of_signing
      t.string :place_of_signing
      t.boolean :active

      t.timestamps
    end
  end
end
