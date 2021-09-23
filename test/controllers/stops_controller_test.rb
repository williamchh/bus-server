require "test_helper"

class StopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stop = stops(:one)
  end

  test "should get index" do
    get stops_url, as: :json
    assert_response :success
  end

  test "should create stop" do
    assert_difference('Stop.count') do
      post stops_url, params: { stop: { code: @stop.code, sequence: @stop.sequence } }, as: :json
    end

    assert_response 201
  end

  test "should show stop" do
    get stop_url(@stop), as: :json
    assert_response :success
  end

  test "should update stop" do
    patch stop_url(@stop), params: { stop: { code: @stop.code, sequence: @stop.sequence } }, as: :json
    assert_response 200
  end

  test "should destroy stop" do
    assert_difference('Stop.count', -1) do
      delete stop_url(@stop), as: :json
    end

    assert_response 204
  end
end
