class ExtraAssignment
  include Mongoid::Document
  field :extra_id

  embedded_in :character, inverse_of: :extra_assignments
end