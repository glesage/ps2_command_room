json.array!(@populations) do |population|
  json.extract! population, :id, :NC, :TR, :VS, :map_id
  json.url population_url(population, format: :json)
end
