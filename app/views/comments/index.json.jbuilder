json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :post
  json.url comment_url(comment, format: :json)
end
