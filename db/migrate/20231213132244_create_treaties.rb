class CreateTreaties < ActiveRecord::Migration[7.0]
  def change
    drop_table :treaties, if_exists: true
    create_table :treaties do |t|
      t.string :name
      t.date :date_of_signing
      t.string :place_of_signing
      t.boolean :active

      t.timestamps
    end
  end
end
