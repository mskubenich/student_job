json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :title, :description
end
