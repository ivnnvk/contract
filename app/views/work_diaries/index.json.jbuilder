json.array!(@work_diaries) do |work_diary|
  json.extract! work_diary, :id
  json.url work_diary_url(work_diary, format: :json)
end
