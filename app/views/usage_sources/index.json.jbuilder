json.array!(@usage_sources) do |usage_source|
  json.extract! usage_source, :id
  json.url usage_source_url(usage_source, format: :json)
end
