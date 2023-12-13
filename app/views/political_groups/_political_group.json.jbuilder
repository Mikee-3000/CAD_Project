json.extract! political_group, :id, :name, :abbreviation, :description, :president, :current_meps, :website, :created_at, :updated_at
json.url political_group_url(political_group, format: :json)
