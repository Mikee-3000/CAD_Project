class CreateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :areas, if_not_exists: true  do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
