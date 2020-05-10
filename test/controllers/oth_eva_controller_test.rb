require 'test_helper'

class OthEvaControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get oth_eva_new_url
    assert_response :success
  end

  test "should get create" do
    get oth_eva_create_url
    assert_response :success
  end

end
