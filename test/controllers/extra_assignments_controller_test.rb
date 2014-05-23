require 'test_helper'

class ExtraAssignmentsControllerTest < ActionController::TestCase
  setup do
    @extra_assignment = extra_assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extra_assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extra_assignment" do
    assert_difference('ExtraAssignment.count') do
      post :create, extra_assignment: { extra_id: @extra_assignment.extra_id }
    end

    assert_redirected_to extra_assignment_path(assigns(:extra_assignment))
  end

  test "should show extra_assignment" do
    get :show, id: @extra_assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extra_assignment
    assert_response :success
  end

  test "should update extra_assignment" do
    patch :update, id: @extra_assignment, extra_assignment: { extra_id: @extra_assignment.extra_id }
    assert_redirected_to extra_assignment_path(assigns(:extra_assignment))
  end

  test "should destroy extra_assignment" do
    assert_difference('ExtraAssignment.count', -1) do
      delete :destroy, id: @extra_assignment
    end

    assert_redirected_to extra_assignments_path
  end
end
