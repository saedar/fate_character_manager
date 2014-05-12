json.array!(@characters) do |character|
  json.extract! character, :id, :name, :description, :high_concept, :trouble, :phase_one, :phase_two, :phase_three
  json.url character_url(character, format: :json)
end
