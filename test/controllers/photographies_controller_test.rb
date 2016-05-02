require 'test_helper'

class PhotographiesControllerTest < ActionController::TestCase
  setup do
    @album = photographies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photographies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photography" do
    assert_difference('Photography.count') do
      post :create, photography: { name: @album.name, location: @album.location }
    end

    assert_redirected_to photography_path(assigns(:photography))
  end

  test "should show photography" do
    get :show, id: @album
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @album
    assert_response :success
  end

  test "should update photography" do
    patch :update, id: @album, photography: { name: @album.name, location: @album.location }
    assert_redirected_to photography_path(assigns(:photography))
  end

  test "should destroy photography" do
    assert_difference('Photography.count', -1) do
      delete :destroy, id: @album
    end

    assert_redirected_to albums_path
  end
end
