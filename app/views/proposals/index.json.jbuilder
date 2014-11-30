json.array!(@proposals) do |proposal|
  json.extract! proposal, :id, :title, :description
  json.url proposal_url(proposal, format: :json)
end
