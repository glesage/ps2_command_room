json.array!(@room_members) do |room_member|
  json.extract! room_member, :id, :member_id, :room_id
  json.url room_member_url(room_member, format: :json)
end
