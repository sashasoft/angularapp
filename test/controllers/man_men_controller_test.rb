require 'test_helper'

class ManMenControllerTest < ActionController::TestCase
  setup do
    @man_man = man_men(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:man_men)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create man_man" do
    assert_difference('ManMan.count') do
      post :create, man_man: { age: @man_man.age, email: @man_man.email, name: @man_man.name }
    end

    assert_redirected_to man_man_path(assigns(:man_man))
  end

  test "should show man_man" do
    get :show, id: @man_man
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @man_man
    assert_response :success
  end

  test "should update man_man" do
    patch :update, id: @man_man, man_man: { age: @man_man.age, email: @man_man.email, name: @man_man.name }
    assert_redirected_to man_man_path(assigns(:man_man))
  end

  test "should destroy man_man" do
    assert_difference('ManMan.count', -1) do
      delete :destroy, id: @man_man
    end

    assert_redirected_to man_men_path
  end
end
