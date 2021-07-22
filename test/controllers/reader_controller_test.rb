require "test_helper"

class ReaderControllerTest < ActionDispatch::IntegrationTest
  test "should get reader" do
    get reader_reader_url
    assert_response :success
  end
end
