require "application_system_test_case"

class PaymentInformationsTest < ApplicationSystemTestCase
  setup do
    @payment_information = payment_informations(:one)
  end

  test "visiting the index" do
    visit payment_informations_url
    assert_selector "h1", text: "Payment Informations"
  end

  test "creating a Payment information" do
    visit payment_informations_url
    click_on "New Payment Information"

    fill_in "Amount Paid", with: @payment_information.amount_paid
    fill_in "Card Number", with: @payment_information.card_number
    fill_in "Cvv", with: @payment_information.cvv
    fill_in "Expiration Date", with: @payment_information.expiration_date
    fill_in "Name On Card", with: @payment_information.name_on_card
    fill_in "Payment Type", with: @payment_information.payment_type
    click_on "Create Payment information"

    assert_text "Payment information was successfully created"
    click_on "Back"
  end

  test "updating a Payment information" do
    visit payment_informations_url
    click_on "Edit", match: :first

    fill_in "Amount Paid", with: @payment_information.amount_paid
    fill_in "Card Number", with: @payment_information.card_number
    fill_in "Cvv", with: @payment_information.cvv
    fill_in "Expiration Date", with: @payment_information.expiration_date
    fill_in "Name On Card", with: @payment_information.name_on_card
    fill_in "Payment Type", with: @payment_information.payment_type
    click_on "Update Payment information"

    assert_text "Payment information was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment information" do
    visit payment_informations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment information was successfully destroyed"
  end
end
