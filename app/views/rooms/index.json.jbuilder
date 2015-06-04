json.array!(@rooms) do |room|
  json.extract! room, :id, :name, :token
  json.url room_url(room, format: :json)
end
