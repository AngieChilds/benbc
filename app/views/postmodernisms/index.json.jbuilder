json.array!(@postmodernisms) do |postmodernism|
  json.extract! postmodernism, :title, :author, :publisher, :year, :more
  json.url postmodernism_url(postmodernism, format: :json)
end