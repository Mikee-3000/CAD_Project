class CreateSchengenAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :schengen_areas do |t|
      t.text :short_description

      t.timestamps
    end
  end
end
