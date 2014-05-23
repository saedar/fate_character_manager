json.array!(@extra_assignments) do |extra_assignment|
  json.extract! extra_assignment, :id, :extra_id
  json.url extra_assignment_url(extra_assignment, format: :json)
end
