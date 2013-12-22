json.array!(@topic_articles) do |topic_article|
  json.extract! topic_article, :title, :body
  json.url topic_article_url(topic_article, format: :json)
end