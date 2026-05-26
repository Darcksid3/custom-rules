require "test_helper"

class CustomRulesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get custom_rules_create_url
    assert_response :success
  end

  test "should get show" do
    get custom_rules_show_url
    assert_response :success
  end
end
