json.array!(@apologetics) do |apologetic|
  json.extract! apologetic, :title, :author, :publisher, :year, :more
  json.url apologetic_url(apologetic, format: :json)
end