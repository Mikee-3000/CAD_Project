json.extract! political_group, :id, :name, :abbreviation, :short_description, :president, :current_meps, :link_to_website, :created_at, :updated_at
json.url political_group_url(political_group, format: :json)
