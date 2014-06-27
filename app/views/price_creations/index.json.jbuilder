json.array!(@price_creations) do |price_creation|
  json.extract! price_creation, :id
  json.url price_creation_url(price_creation, format: :json)
end
