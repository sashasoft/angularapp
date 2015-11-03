require 'test_helper'

class MonsControllerTest < ActionController::TestCase
  setup do
    @mon = mons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mon" do
    assert_difference('Mon.count') do
      post :create, mon: {  }
    end

    assert_redirected_to mon_path(assigns(:mon))
  end

  test "should show mon" do
    get :show, id: @mon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mon
    assert_response :success
  end

  test "should update mon" do
    patch :update, id: @mon, mon: {  }
    assert_redirected_to mon_path(assigns(:mon))
  end

  test "should destroy mon" do
    assert_difference('Mon.count', -1) do
      delete :destroy, id: @mon
    end

    assert_redirected_to mons_path
  end
end
