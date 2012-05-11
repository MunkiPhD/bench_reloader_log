require 'test_helper'

class BulletTypesControllerTest < ActionController::TestCase
  setup do
    @bullet_type = bullet_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bullet_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create bullet_type" do
    assert_difference('BulletType.count') do
      post :create, bullet_type: { acronym: @bullet_type.acronym, name: @bullet_type.name }
    end

    assert_redirected_to bullet_type_path(assigns(:bullet_type))
  end

  test "should show bullet_type" do
    get :show, id: @bullet_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @bullet_type
    assert_response :success
  end

  test "should update bullet_type" do
    put :update, id: @bullet_type, bullet_type: { acronym: @bullet_type.acronym, name: @bullet_type.name }
    assert_redirected_to bullet_type_path(assigns(:bullet_type))
  end

  test "should destroy bullet_type" do
    assert_difference('BulletType.count', -1) do
      delete :destroy, id: @bullet_type
    end

    assert_redirected_to bullet_types_path
  end
end
