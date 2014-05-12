class Skill
  include Mongoid::Document
  field :name, type: String
  field :overcome, type: Mongoid::Boolean
  field :attack, type: Mongoid::Boolean
  field :defend, type: Mongoid::Boolean
  field :advantage, type: Mongoid::Boolean
end
