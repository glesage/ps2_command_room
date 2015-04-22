json.array!(@maps) do |map|
  json.extract! map, :id, :name, :ps2_id, :server_id
  json.url map_url(map, format: :json)
end
