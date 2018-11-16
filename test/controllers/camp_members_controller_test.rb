require 'test_helper'

class CampMembersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @camp_member = camp_members(:one)
  end

  test "should get index" do
    get camp_members_url
    assert_response :success
  end

  test "should get new" do
    get new_camp_member_url
    assert_response :success
  end

  test "should create camp_member" do
    assert_difference('CampMember.count') do
      post camp_members_url, params: { camp_member: { age: @camp_member.age, church_id: @camp_member.church_id, city: @camp_member.city, dob: @camp_member.dob, email: @camp_member.email, entered_on: @camp_member.entered_on, first_name: @camp_member.first_name, last_name: @camp_member.last_name, paid: @camp_member.paid, payment_type: @camp_member.payment_type, phone_number: @camp_member.phone_number, state: @camp_member.state, street: @camp_member.street, zip: @camp_member.zip } }
    end

    assert_redirected_to camp_member_url(CampMember.last)
  end

  test "should show camp_member" do
    get camp_member_url(@camp_member)
    assert_response :success
  end

  test "should get edit" do
    get edit_camp_member_url(@camp_member)
    assert_response :success
  end

  test "should update camp_member" do
    patch camp_member_url(@camp_member), params: { camp_member: { age: @camp_member.age, church_id: @camp_member.church_id, city: @camp_member.city, dob: @camp_member.dob, email: @camp_member.email, entered_on: @camp_member.entered_on, first_name: @camp_member.first_name, last_name: @camp_member.last_name, paid: @camp_member.paid, payment_type: @camp_member.payment_type, phone_number: @camp_member.phone_number, state: @camp_member.state, street: @camp_member.street, zip: @camp_member.zip } }
    assert_redirected_to camp_member_url(@camp_member)
  end

  test "should destroy camp_member" do
    assert_difference('CampMember.count', -1) do
      delete camp_member_url(@camp_member)
    end

    assert_redirected_to camp_members_url
  end
end
