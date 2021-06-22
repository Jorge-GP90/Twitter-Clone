require "test_helper"

class SwiitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get swiits_index_url
    assert_response :success
  end
end
