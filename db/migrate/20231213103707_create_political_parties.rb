class CreatePoliticalParties < ActiveRecord::Migration[7.0]
  def change
    drop_table :political_parties
    create_table :political_parties do |t|
      t.string :name
      t.references :political_group, null: false, foreign_key: true

      t.timestamps
    end
  end
end
