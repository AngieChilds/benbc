json.array!(@men) do |man|
  json.extract! man, :title, :author, :publisher, :year, :more
  json.url man_url(man, format: :json)
end