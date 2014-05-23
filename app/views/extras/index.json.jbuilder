json.array!(@extras) do |extra|
  json.extract! extra, :id, :name, :permission, :cost, :description, :overcome, :create, :attack, :defend
  json.url extra_url(extra, format: :json)
end
