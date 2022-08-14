require "test_helper"

class SearchesControllerTest < ActionDispatch::IntegrationTest
  test "should get tags_search" do
    get searches_tags_search_url
    assert_response :success
  end
end
