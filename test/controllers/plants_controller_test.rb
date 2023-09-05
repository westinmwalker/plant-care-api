require "test_helper"

class PlantsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/plants.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Plant.count, data.length
  end

  test "create" do
    assert_difference "Plant.count", 1 do
      post "/plants.json", params: { name: "Ficus", image_url: "https://greeneryunlimited.co/cdn/shop/products/Calyer-34-White_fcs-aud-10.jpg?v=1605964214", description: "Keep them out of direct sunlight and be sure to keep the soil consistently moist below the top layer!", amount_of_sun: 6, days_to_water: 6 }
      assert_response 200
    end
  end

  test "show" do
    get "/plants/#{Plant.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "description", "amount_of_sun", "days_to_water"], data.keys
  end
end
