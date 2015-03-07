require 'test_helper'

class CategorysControllerTest < ActionController::TestCase
  setup do
    @category = categorys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:categorys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create category" do
    assert_difference('Category.count') do
      post :create, category: { description: @category.description, title: @category.title, parentId: 0}
    end

    assert_redirected_to category_path(assigns(:category))
  end

  test "should show category" do
    get :show, id: @category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @category
    assert_response :success
  end

  test "should update category" do
    patch :update, id: @category, category: { description: @category.description, title: @category.title }
    assert_redirected_to categoru_path(assigns(:category))
  end

  test "should destroy category" do
    assert_difference('Category.count', -1) do
      delete :destroy, id: @category
    end

    assert_redirected_to category_path
  end
end
