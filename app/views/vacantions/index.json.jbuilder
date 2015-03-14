json.array!(@vacantions) do |vacantion|
  json.extract! vacantion, :id, :title, :description
end
