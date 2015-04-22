json.array!(@hexes) do |hex|
  json.extract! hex, :id, :facility_id, :position_id, :type
  json.url hex_url(hex, format: :json)
end
