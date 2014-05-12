class Stunt
  include Mongoid::Document
  field :name, type: String
  field :description, type: String

  embedded_in :character, inverse_of: :stunts
end
