class ChangePoliticalGroupIdToAllowNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :officials, :political_group_id, true
  end
end
