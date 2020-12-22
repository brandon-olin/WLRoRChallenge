require "test_helper"

class WrapperControllerTest < ActionDispatch::IntegrationTest
  test "should get wrap" do
    get wrapper_wrap_url
    assert_response :success
  end
end
