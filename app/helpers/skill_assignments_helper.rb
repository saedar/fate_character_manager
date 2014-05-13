module SkillAssignmentsHelper

  def skill_assignment(skill_id)
    Skill.find(skill_id)
  end
end
