json.array!(@articles) do |article|
  json.extract! article, :id, :title
  json.created_at article.created_at.strftime '%d-%b-%Y'
  json.updated_at article.updated_at.strftime '%d-%b-%Y'
end
