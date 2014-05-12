require 'test_helper'

class SkillAssignmentsControllerTest < ActionController::TestCase
  setup do
    @skill_assignment = skill_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skill_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skill_assignment" do
    assert_difference('SkillAssignment.count') do
      post :create, skill_assignment: {  }
    end

    assert_redirected_to skill_assignment_path(assigns(:skill_assignment))
  end

  test "should show skill_assignment" do
    get :show, id: @skill_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skill_assignment
    assert_response :success
  end

  test "should update skill_assignment" do
    patch :update, id: @skill_assignment, skill_assignment: {  }
    assert_redirected_to skill_assignment_path(assigns(:skill_assignment))
  end

  test "should destroy skill_assignment" do
    assert_difference('SkillAssignment.count', -1) do
      delete :destroy, id: @skill_assignment
    end

    assert_redirected_to skill_assignments_path
  end
end
