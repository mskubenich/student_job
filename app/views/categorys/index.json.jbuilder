json.array!(@categorys) do |category|
  json.extract! category, :id, :title, :description
end
