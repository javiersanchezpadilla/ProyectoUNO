require 'test_helper'

class CarrersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get carrers_index_url
    assert_response :success
  end

  test "should get new" do
    get carrers_new_url
    assert_response :success
  end

  test "should get edit" do
    get carrers_edit_url
    assert_response :success
  end

  test "should get show" do
    get carrers_show_url
    assert_response :success
  end

end
