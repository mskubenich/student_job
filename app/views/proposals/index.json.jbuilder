json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :title, :description, :created_at, :updated_at, :salary, :currency
end
