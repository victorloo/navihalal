require "application_system_test_case"

class RestaurantsTest < ApplicationSystemTestCase
  setup do
    @restaurant = restaurants(:one)
  end

  test "visiting the index" do
    visit restaurants_url
    assert_selector "h1", text: "Restaurants"
  end

  test "creating a Restaurant" do
    visit restaurants_url
    click_on "New Restaurant"

    fill_in "Address", with: @restaurant.address
    fill_in "Close Hour", with: @restaurant.close_hour
    fill_in "Intro", with: @restaurant.intro
    fill_in "Lat", with: @restaurant.lat
    fill_in "Lon", with: @restaurant.lon
    fill_in "Name", with: @restaurant.name
    fill_in "Open Hour", with: @restaurant.open_hour
    fill_in "Photo", with: @restaurant.photo
    fill_in "Tel", with: @restaurant.tel
    fill_in "User", with: @restaurant.user_id
    fill_in "Viewed Count", with: @restaurant.viewed_count
    click_on "Create Restaurant"

    assert_text "Restaurant was successfully created"
    click_on "Back"
  end

  test "updating a Restaurant" do
    visit restaurants_url
    click_on "Edit", match: :first

    fill_in "Address", with: @restaurant.address
    fill_in "Close Hour", with: @restaurant.close_hour
    fill_in "Intro", with: @restaurant.intro
    fill_in "Lat", with: @restaurant.lat
    fill_in "Lon", with: @restaurant.lon
    fill_in "Name", with: @restaurant.name
    fill_in "Open Hour", with: @restaurant.open_hour
    fill_in "Photo", with: @restaurant.photo
    fill_in "Tel", with: @restaurant.tel
    fill_in "User", with: @restaurant.user_id
    fill_in "Viewed Count", with: @restaurant.viewed_count
    click_on "Update Restaurant"

    assert_text "Restaurant was successfully updated"
    click_on "Back"
  end

  test "destroying a Restaurant" do
    visit restaurants_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Restaurant was successfully destroyed"
  end
end
