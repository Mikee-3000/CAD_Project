class CreateMemberStateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :member_state_areas, if_not_exists: true  do |t|
      t.belongs_to :member_state, null: false, foreign_key: true
      t.belongs_to :area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
