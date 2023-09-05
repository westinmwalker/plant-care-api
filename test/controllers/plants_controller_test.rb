require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/plants.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Plant.count, data.length
  end

  test "show" do
    get "/plants/#{Plant.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "image_url", "name", "description", "amount_of_sun", "days_to_water"], data.keys
  end
end
