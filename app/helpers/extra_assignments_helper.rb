module ExtraAssignmentsHelper

  def extra_assignment(extra_id)
    Extra.find(extra_id)
  end
end
