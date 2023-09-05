require "test_helper"

class SchedulesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/schedules.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Schedule.count, data.length
  end

  test "create" do
    assert_difference "Schedule.count", 1 do
      post "/schedules.json", params: { plant_id: 4, user_id: 1, image_url: "https://www.mydomaine.com/thmb/FTquCarmnL7l8djQaaW5JxBBq0M=/853x0/filters:no_upscale():strip_icc()/indoor-cactus-plants-saguaro-6fb83aec85a14a1eae828a1cedb83853.jpg", watering_start_date: "2023-09-05" }
      assert_response 200
    end
  end

  test "show" do
    get "/schedules/#{Schedule.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "plant_id", "user_id", "image_url", "watering_start_date"], data.keys
  end
end
