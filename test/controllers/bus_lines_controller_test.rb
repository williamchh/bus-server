require "test_helper"

class BusLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bus_line = bus_lines(:one)
  end

  test "should get index" do
    get bus_lines_url, as: :json
    assert_response :success
  end

  test "should create bus_line" do
    assert_difference('BusLine.count') do
      post bus_lines_url, params: { bus_line: { lineNumber: @bus_line.lineNumber } }, as: :json
    end

    assert_response 201
  end

  test "should show bus_line" do
    get bus_line_url(@bus_line), as: :json
    assert_response :success
  end

  test "should update bus_line" do
    patch bus_line_url(@bus_line), params: { bus_line: { lineNumber: @bus_line.lineNumber } }, as: :json
    assert_response 200
  end

  test "should destroy bus_line" do
    assert_difference('BusLine.count', -1) do
      delete bus_line_url(@bus_line), as: :json
    end

    assert_response 204
  end
end
