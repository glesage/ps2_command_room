json.array!(@facilities) do |facility|
  json.extract! facility, :id, :faction, :map_id, :name, :ps2_id, :type_name, :type_id
  json.url facility_url(facility, format: :json)
end
