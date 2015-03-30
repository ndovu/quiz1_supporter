require 'test_helper'

class SupportTypesControllerTest < ActionController::TestCase
  setup do
    @support_type = support_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:support_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create support_type" do
    assert_difference('SupportType.count') do
      post :create, support_type: { support_type_name: @support_type.support_type_name }
    end

    assert_redirected_to support_type_path(assigns(:support_type))
  end

  test "should show support_type" do
    get :show, id: @support_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @support_type
    assert_response :success
  end

  test "should update support_type" do
    patch :update, id: @support_type, support_type: { support_type_name: @support_type.support_type_name }
    assert_redirected_to support_type_path(assigns(:support_type))
  end

  test "should destroy support_type" do
    assert_difference('SupportType.count', -1) do
      delete :destroy, id: @support_type
    end

    assert_redirected_to support_types_path
  end
end
