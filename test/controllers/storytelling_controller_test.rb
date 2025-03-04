require "test_helper"

class StorytellingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get storytelling_index_url
    assert_response :success
  end
end
