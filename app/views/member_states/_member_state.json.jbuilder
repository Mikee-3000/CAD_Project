json.extract! member_state, :id, :name, :entry_date, :capital, :population, :number_meps, :euro_area_id, :schengen_area_id, :created_at, :updated_at
json.url member_state_url(member_state, format: :json)
