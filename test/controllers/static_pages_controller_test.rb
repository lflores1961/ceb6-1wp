require "test_helper"

class StaticPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get static_pages_main_url
    assert_response :success
  end

  test "should get informacion" do
    get static_pages_informacion_url
    assert_response :success
  end

  test "should get servicios" do
    get static_pages_servicios_url
    assert_response :success
  end

  test "should get control" do
    get static_pages_control_url
    assert_response :success
  end

  test "should get virtual" do
    get static_pages_virtual_url
    assert_response :success
  end
end
