json.array!(@order_types) do |order_type|
  json.extract! order_type, :id
  json.url order_type_url(order_type, format: :json)
end
