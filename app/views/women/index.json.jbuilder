json.array!(@women) do |woman|
  json.extract! woman, :title, :author, :publisher, :year, :more
  json.url woman_url(woman, format: :json)
end