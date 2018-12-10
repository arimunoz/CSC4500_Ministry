require 'test_helper'

class ChurchNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @church_name = church_names(:one)
  end

  test "should get index" do
    get church_names_url
    assert_response :success
  end

  test "should get new" do
    get new_church_name_url
    assert_response :success
  end

  test "should create church_name" do
    assert_difference('ChurchName.count') do
      post church_names_url, params: { church_name: { church_name: @church_name.church_name, mens_leader: @church_name.mens_leader, pastor_name: @church_name.pastor_name } }
    end

    assert_redirected_to church_name_url(ChurchName.last)
  end

  test "should show church_name" do
    get church_name_url(@church_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_church_name_url(@church_name)
    assert_response :success
  end

  test "should update church_name" do
    patch church_name_url(@church_name), params: { church_name: { church_name: @church_name.church_name, mens_leader: @church_name.mens_leader, pastor_name: @church_name.pastor_name } }
    assert_redirected_to church_name_url(@church_name)
  end

  test "should destroy church_name" do
    assert_difference('ChurchName.count', -1) do
      delete church_name_url(@church_name)
    end

    assert_redirected_to church_names_url
  end
end
