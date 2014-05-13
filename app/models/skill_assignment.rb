class SkillAssignment
  include Mongoid::Document
  field :level
  field :skill_id

  embedded_in :character, inverse_of: :skill_assignments
end
