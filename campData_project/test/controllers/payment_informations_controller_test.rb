require 'test_helper'

class PaymentInformationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment_information = payment_informations(:one)
  end

  test "should get index" do
    get payment_informations_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_information_url
    assert_response :success
  end

  test "should create payment_information" do
    assert_difference('PaymentInformation.count') do
      post payment_informations_url, params: { payment_information: { amount_paid: @payment_information.amount_paid, card_number: @payment_information.card_number, cvv: @payment_information.cvv, expiration_date: @payment_information.expiration_date, name_on_card: @payment_information.name_on_card, payment_type: @payment_information.payment_type } }
    end

    assert_redirected_to payment_information_url(PaymentInformation.last)
  end

  test "should show payment_information" do
    get payment_information_url(@payment_information)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_information_url(@payment_information)
    assert_response :success
  end

  test "should update payment_information" do
    patch payment_information_url(@payment_information), params: { payment_information: { amount_paid: @payment_information.amount_paid, card_number: @payment_information.card_number, cvv: @payment_information.cvv, expiration_date: @payment_information.expiration_date, name_on_card: @payment_information.name_on_card, payment_type: @payment_information.payment_type } }
    assert_redirected_to payment_information_url(@payment_information)
  end

  test "should destroy payment_information" do
    assert_difference('PaymentInformation.count', -1) do
      delete payment_information_url(@payment_information)
    end

    assert_redirected_to payment_informations_url
  end
end
