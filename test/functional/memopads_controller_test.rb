require 'test_helper'

class MemopadsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:memopads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create memopad" do
    assert_difference('Memopad.count') do
      post :create, :memopad => { }
    end

    assert_redirected_to memopad_path(assigns(:memopad))
  end

  test "should show memopad" do
    get :show, :id => memopads(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => memopads(:one).to_param
    assert_response :success
  end

  test "should update memopad" do
    put :update, :id => memopads(:one).to_param, :memopad => { }
    assert_redirected_to memopad_path(assigns(:memopad))
  end

  test "should destroy memopad" do
    assert_difference('Memopad.count', -1) do
      delete :destroy, :id => memopads(:one).to_param
    end

    assert_redirected_to memopads_path
  end
end
