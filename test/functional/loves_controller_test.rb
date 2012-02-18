require 'test_helper'

class LovesControllerTest < ActionController::TestCase
  setup do
    @lofe = loves(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:loves)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lofe" do
    assert_difference('Love.count') do
      post :create, lofe: @lofe.attributes
    end

    assert_redirected_to lofe_path(assigns(:lofe))
  end

  test "should show lofe" do
    get :show, id: @lofe
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lofe
    assert_response :success
  end

  test "should update lofe" do
    put :update, id: @lofe, lofe: @lofe.attributes
    assert_redirected_to lofe_path(assigns(:lofe))
  end

  test "should destroy lofe" do
    assert_difference('Love.count', -1) do
      delete :destroy, id: @lofe
    end

    assert_redirected_to loves_path
  end
end
