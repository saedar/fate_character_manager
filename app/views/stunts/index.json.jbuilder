json.array!(@stunts) do |stunt|
  json.extract! stunt, :id, :name, :description
  json.url stunt_url(stunt, format: :json)
end
