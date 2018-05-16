require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_url
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { address: @restaurant.address, close_hour: @restaurant.close_hour, intro: @restaurant.intro, lat: @restaurant.lat, lon: @restaurant.lon, name: @restaurant.name, open_hour: @restaurant.open_hour, photo: @restaurant.photo, tel: @restaurant.tel, user_id: @restaurant.user_id, viewed_count: @restaurant.viewed_count } }
    end

    assert_redirected_to restaurant_url(Restaurant.last)
  end

  test "should show restaurant" do
    get restaurant_url(@restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_url(@restaurant)
    assert_response :success
  end

  test "should update restaurant" do
    patch restaurant_url(@restaurant), params: { restaurant: { address: @restaurant.address, close_hour: @restaurant.close_hour, intro: @restaurant.intro, lat: @restaurant.lat, lon: @restaurant.lon, name: @restaurant.name, open_hour: @restaurant.open_hour, photo: @restaurant.photo, tel: @restaurant.tel, user_id: @restaurant.user_id, viewed_count: @restaurant.viewed_count } }
    assert_redirected_to restaurant_url(@restaurant)
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete restaurant_url(@restaurant)
    end

    assert_redirected_to restaurants_url
  end
end
