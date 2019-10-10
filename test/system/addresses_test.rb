require "application_system_test_case"

class AddressesTest < ApplicationSystemTestCase
  
  test "visiting the index" do
    visit addresses_url
    assert_selector "h1", text: "Addresses"
  end

  test "creating a Address" do
    visit addresses_url
    click_on "New Address"

    fill_in "Name", with: 'laxmi'
    fill_in "Phone num", with: '543298765'
    fill_in "Address1", with: 'kalyan nagar sindagi'
    fill_in "Address2", with: 'brokefield'
    fill_in "City", with: 'bijapur'
    fill_in "Pincode", with: '586128'
    
    click_on "Create Address"

    assert_text "Address was successfully created"
    click_on "Back"
  end

  test "updating a Address" do
    visit addresses_url
    click_on "Edit", match: :first

    fill_in "Name", with: 'laxmi'
    fill_in "Phone num", with: '543298765'
    fill_in "Address1", with: 'kalyan nagar sindagi'
    fill_in "Address2", with: 'brokefield'
    fill_in "City", with: 'bijapur'
    fill_in "Pincode", with: '586128'

    click_on "Update Address"

    assert_text "Address was successfully updated"
    click_on "Back"
  end

 test "destroying a Address" do
    visit addresses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Address was successfully destroyed"
  end
end
