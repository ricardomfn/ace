require "test_helper"

class StimulusControllerTest < ActionDispatch::IntegrationTest
  test "should get popup" do
    get stimulus_popup_url
    assert_response :success
  end
end
