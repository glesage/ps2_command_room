json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :title, :description, :image_path, :start_date, :end_date
  json.url promotion_url(promotion, format: :json)
end
