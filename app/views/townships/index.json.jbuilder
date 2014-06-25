json.array!(@townships) do |township|
  json.extract! township, :id
  json.url township_url(township, format: :json)
end
