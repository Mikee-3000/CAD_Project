class CreateMemberStates < ActiveRecord::Migration[7.0]
  def change
    create_table :member_states do |t|
      t.string :name
      t.date :entry_date
      t.string :capital
      t.integer :population
      t.integer :number_meps
      t.references :euro_area, null: false, foreign_key: true
      t.references :schengen_area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
