require "test_helper"

class FlashControllerTest < ActionDispatch::IntegrationTest
  test "should get flash1" do
    get flash_flash1_url
    assert_response :success
  end

  test "should get flash2" do
    get flash_flash2_url
    assert_response :success
  end

  test "should get flash3" do
    get flash_flash3_url
    assert_response :success
  end
end
