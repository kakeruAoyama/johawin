require 'test_helper'

class MyEvaControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get my_eva_new_url
    assert_response :success
  end

  test "should get edit" do
    get my_eva_edit_url
    assert_response :success
  end

  test "should get index" do
    get my_eva_index_url
    assert_response :success
  end

  test "should get createupdate" do
    get my_eva_createupdate_url
    assert_response :success
  end

end
