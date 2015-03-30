require 'test_helper'

class UserSupportFormsControllerTest < ActionController::TestCase
  setup do
    @user_support_form = user_support_forms(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_support_forms)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_support_form" do
    assert_difference('UserSupportForm.count') do
      post :create, user_support_form: { email: @user_support_form.email, message: @user_support_form.message, name: @user_support_form.name, support_type_id: @user_support_form.support_type_id }
    end

    assert_redirected_to user_support_form_path(assigns(:user_support_form))
  end

  test "should show user_support_form" do
    get :show, id: @user_support_form
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_support_form
    assert_response :success
  end

  test "should update user_support_form" do
    patch :update, id: @user_support_form, user_support_form: { email: @user_support_form.email, message: @user_support_form.message, name: @user_support_form.name, support_type_id: @user_support_form.support_type_id }
    assert_redirected_to user_support_form_path(assigns(:user_support_form))
  end

  test "should destroy user_support_form" do
    assert_difference('UserSupportForm.count', -1) do
      delete :destroy, id: @user_support_form
    end

    assert_redirected_to user_support_forms_path
  end
end
