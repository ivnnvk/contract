json.array!(@source_types) do |source_type|
  json.extract! source_type, :id
  json.url source_type_url(source_type, format: :json)
end
