json.array!(@evangelisms) do |evangelism|
  json.extract! evangelism, :title, :author, :publisher, :year, :more
  json.url evangelism_url(evangelism, format: :json)
end