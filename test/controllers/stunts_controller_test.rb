require 'test_helper'

class StuntsControllerTest < ActionController::TestCase
  setup do
    @stunt = stunts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stunts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stunt" do
    assert_difference('Stunt.count') do
      post :create, stunt: { description: @stunt.description, name: @stunt.name }
    end

    assert_redirected_to stunt_path(assigns(:stunt))
  end

  test "should show stunt" do
    get :show, id: @stunt
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stunt
    assert_response :success
  end

  test "should update stunt" do
    patch :update, id: @stunt, stunt: { description: @stunt.description, name: @stunt.name }
    assert_redirected_to stunt_path(assigns(:stunt))
  end

  test "should destroy stunt" do
    assert_difference('Stunt.count', -1) do
      delete :destroy, id: @stunt
    end

    assert_redirected_to stunts_path
  end
end
