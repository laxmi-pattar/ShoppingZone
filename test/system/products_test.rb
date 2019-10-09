require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase

  test "visiting the index" do
    visit products_url
  end

   test "visiting the cart page" do
    visit products_url
    click_on "Cart"
    visit pages_cart_url
  end

   test "visiting the aboutme page" do
    visit products_url
    click_on "AboutMe"
    visit pages_about_url
  end

end
