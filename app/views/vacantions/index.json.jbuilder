json.array!(@vacantions) do |vacantion|
  json.extract! vacantion, :id, :title, :description, :created_at, :updated_at, :salary, :currency
end
