json.array!(@discipleships) do |discipleship|
  json.extract! discipleship, :title, :author, :publisher, :year, :more
  json.url discipleship_url(discipleship, format: :json)
end