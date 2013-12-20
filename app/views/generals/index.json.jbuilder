json.array!(@generals) do |general|
  json.extract! general, :title, :author, :publisher, :year, :more
  json.url general_url(general, format: :json)
end