json.array!(@matches) do |match|
  json.extract! match, :id, :room_id, :end_time
  json.url match_url(match, format: :json)
end
