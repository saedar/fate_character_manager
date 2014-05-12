json.array!(@skills) do |skill|
  json.extract! skill, :id, :name, :overcome, :attack, :defend, :advantage
  json.url skill_url(skill, format: :json)
end
