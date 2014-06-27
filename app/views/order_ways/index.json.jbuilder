json.array!(@order_ways) do |order_way|
  json.extract! order_way, :id
  json.url order_way_url(order_way, format: :json)
end
