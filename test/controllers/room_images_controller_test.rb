require "test_helper"

class RoomImagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room_image = room_images(:one)
  end

  test "should get index" do
    get room_images_url
    assert_response :success
  end

  test "should get new" do
    get new_room_image_url
    assert_response :success
  end

  test "should create room_image" do
    assert_difference('RoomImage.count') do
      post room_images_url, params: { room_image: { image_id: @room_image.image_id, room_id: @room_image.room_id } }
    end

    assert_redirected_to room_image_url(RoomImage.last)
  end

  test "should show room_image" do
    get room_image_url(@room_image)
    assert_response :success
  end

  test "should get edit" do
    get edit_room_image_url(@room_image)
    assert_response :success
  end

  test "should update room_image" do
    patch room_image_url(@room_image), params: { room_image: { image_id: @room_image.image_id, room_id: @room_image.room_id } }
    assert_redirected_to room_image_url(@room_image)
  end

  test "should destroy room_image" do
    assert_difference('RoomImage.count', -1) do
      delete room_image_url(@room_image)
    end

    assert_redirected_to room_images_url
  end
end
