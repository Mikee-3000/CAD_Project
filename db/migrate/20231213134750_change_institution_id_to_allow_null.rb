class ChangeInstitutionIdToAllowNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :officials, :institution_id, true
    end
end
