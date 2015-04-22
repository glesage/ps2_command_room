json.array!(@controls) do |control|
  json.extract! control, :id, :NC, :TR, :VS, :map_id
  json.url control_url(control, format: :json)
end
