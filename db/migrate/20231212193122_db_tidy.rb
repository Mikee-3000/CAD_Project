class DbTidy < ActiveRecord::Migration[7.0]
  def change
    remove_column :officials, :link_to_institution
    rename_column :institutions, :geographical_seat, :seat
    rename_column :institutions, :short_description, :description
    rename_column :institutions, :link_to_website, :website
    rename_column :officials, :link_to_website, :website
    rename_column :political_groups, :link_to_website, :website
    rename_column :political_groups, :short_description, :description
    drop_table :member_states
    drop_table :euro_areas
    drop_table :schengen_areas
  end
end
