require "test_helper"

class ServiceUsagesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get service_usages_index_url
    assert_response :success
  end

  test "should get show" do
    get service_usages_show_url
    assert_response :success
  end
end
