class CreateMemberStateAreas < ActiveRecord::Migration[7.0]
  def change
    create_table :member_state_areas do |t|
      t.belongs_to :MemberState, null: false, foreign_key: true
      t.belongs_to :Area, null: false, foreign_key: true

      t.timestamps
    end
  end
end
