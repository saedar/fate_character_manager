require 'test_helper'

class ExtrasControllerTest < ActionController::TestCase
  setup do
    @extra = extras(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:extras)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create extra" do
    assert_difference('Extra.count') do
      post :create, extra: { attack: @extra.attack, cost: @extra.cost, create: @extra.create, defend: @extra.defend, description: @extra.description, name: @extra.name, overcome: @extra.overcome, permission: @extra.permission }
    end

    assert_redirected_to extra_path(assigns(:extra))
  end

  test "should show extra" do
    get :show, id: @extra
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @extra
    assert_response :success
  end

  test "should update extra" do
    patch :update, id: @extra, extra: { attack: @extra.attack, cost: @extra.cost, create: @extra.create, defend: @extra.defend, description: @extra.description, name: @extra.name, overcome: @extra.overcome, permission: @extra.permission }
    assert_redirected_to extra_path(assigns(:extra))
  end

  test "should destroy extra" do
    assert_difference('Extra.count', -1) do
      delete :destroy, id: @extra
    end

    assert_redirected_to extras_path
  end
end
