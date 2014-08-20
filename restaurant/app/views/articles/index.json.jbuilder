json.array!(@articles) do |article|
  json.extract! article, :id, :title, :name, :desciption
  json.url article_url(article, format: :json)
end
