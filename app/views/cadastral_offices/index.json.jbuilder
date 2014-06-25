json.array!(@cadastral_offices) do |cadastral_office|
  json.extract! cadastral_office, :id
  json.url cadastral_office_url(cadastral_office, format: :json)
end
