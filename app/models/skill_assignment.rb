class SkillAssignment
  include Mongoid::Document
  field :level

  embedded_in :character, inverse_of: :skill_assignments
end
