require 'test_helper'

class VacantionsControllerTest < ActionController::TestCase
  setup do
    @vacantion = vacantions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vacantions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vacantion" do
    assert_difference('Vacantion.count') do
      post :create, vacantion: { description: @vacantion.description, title: @vacantion.title }
    end

    assert_redirected_to vacantions_path(assigns(:vacantion))
  end

  test "should show vacantion" do
    get :show, id: @vacantion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vacantion
    assert_response :success
  end

  test "should update vacantion" do
    patch :update, id: @vacantion, vacantion: { description: @vacantion.description, title: @vacantion.title }
    assert_redirected_to proposal_path(assigns(:vacantion))
  end

  test "should destroy vacantion" do
    assert_difference('Vacantion.count', -1) do
      delete :destroy, id: @vacantion
    end

    assert_redirected_to @vacantions_path
  end
end
