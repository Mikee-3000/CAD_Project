class ChangePartiesPoliticalGroupIdToAllowNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :political_parties, :political_group_id, true
  end
end
