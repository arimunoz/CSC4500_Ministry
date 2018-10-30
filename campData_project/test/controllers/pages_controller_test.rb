require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get login" do
    get pages_login_url
    assert_response :success
  end

  test "should get registration" do
    get pages_registration_url
    assert_response :success
  end

  test "should get admin_page" do
    get pages_admin_page_url
    assert_response :success
  end

end
