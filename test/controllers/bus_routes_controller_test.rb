require "test_helper"

class BusRoutesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus_route = bus_routes(:one)
  end

  test "should get index" do
    get bus_routes_url, as: :json
    assert_response :success
  end

  test "should create bus_route" do
    assert_difference('BusRoute.count') do
      post bus_routes_url, params: { bus_route: { routeName: @bus_route.routeName } }, as: :json
    end

    assert_response 201
  end

  test "should show bus_route" do
    get bus_route_url(@bus_route), as: :json
    assert_response :success
  end

  test "should update bus_route" do
    patch bus_route_url(@bus_route), params: { bus_route: { routeName: @bus_route.routeName } }, as: :json
    assert_response 200
  end

  test "should destroy bus_route" do
    assert_difference('BusRoute.count', -1) do
      delete bus_route_url(@bus_route), as: :json
    end

    assert_response 204
  end
end
