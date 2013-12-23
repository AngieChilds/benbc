json.array!(@bookmarks) do |bookmark|
  json.extract! bookmark, :url
  json.url bookmark_url(bookmark, format: :json)
end