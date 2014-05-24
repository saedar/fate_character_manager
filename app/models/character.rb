class Character
  include Mongoid::Document
  field :name
  field :description
  field :high_concept
  field :trouble
  field :phase_one
  field :phase_two
  field :phase_three

  embeds_many :skill_assignments
  embeds_many :stunts
  embeds_many :extra_assignments
end
