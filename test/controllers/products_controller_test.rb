require 'test_helper'

class ProductsControllerTest < ActionController::TestCase

  setup do
    @product = products(:one)
    @update = {
      :title => 'Lorem Ipsum' ,
      :description => 'Wibbles are fun!' ,
       :price => 19.95
    }
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit
    assert_response :success
  end

  test "should get show" do
    get :show
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

end
