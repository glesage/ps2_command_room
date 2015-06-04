json.array!(@ground_squads) do |ground_squad|
  json.extract! ground_squad, :id, :platoon, :squad, :room_id
  json.url ground_squad_url(ground_squad, format: :json)
end
