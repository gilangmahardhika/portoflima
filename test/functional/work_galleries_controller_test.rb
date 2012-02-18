require 'test_helper'

class WorkGalleriesControllerTest < ActionController::TestCase
  setup do
    @work_gallery = work_galleries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_galleries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_gallery" do
    assert_difference('WorkGallery.count') do
      post :create, work_gallery: @work_gallery.attributes
    end

    assert_redirected_to work_gallery_path(assigns(:work_gallery))
  end

  test "should show work_gallery" do
    get :show, id: @work_gallery
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_gallery
    assert_response :success
  end

  test "should update work_gallery" do
    put :update, id: @work_gallery, work_gallery: @work_gallery.attributes
    assert_redirected_to work_gallery_path(assigns(:work_gallery))
  end

  test "should destroy work_gallery" do
    assert_difference('WorkGallery.count', -1) do
      delete :destroy, id: @work_gallery
    end

    assert_redirected_to work_galleries_path
  end
end
