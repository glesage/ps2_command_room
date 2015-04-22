json.array!(@air_squads) do |air_squad|
  json.extract! air_squad, :id, :platoon, :squad, :room_id, :position_id
  json.url air_squad_url(air_squad, format: :json)
end
