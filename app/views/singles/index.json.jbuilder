json.array!(@singles) do |single|
  json.extract! single, :title, :author, :publisher, :year, :more
  json.url single_url(single, format: :json)
end