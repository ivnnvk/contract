json.array!(@handover_ways) do |handover_way|
  json.extract! handover_way, :id
  json.url handover_way_url(handover_way, format: :json)
end
