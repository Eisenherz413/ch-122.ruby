require "application_system_test_case"

class RoomImagesTest < ApplicationSystemTestCase
  setup do
    @room_image = room_images(:one)
  end

  test "visiting the index" do
    visit room_images_url
    assert_selector "h1", text: "Room Images"
  end

  test "creating a Room image" do
    visit room_images_url
    click_on "New Room Image"

    fill_in "Image", with: @room_image.image_id
    fill_in "Room", with: @room_image.room_id
    click_on "Create Room image"

    assert_text "Room image was successfully created"
    click_on "Back"
  end

  test "updating a Room image" do
    visit room_images_url
    click_on "Edit", match: :first

    fill_in "Image", with: @room_image.image_id
    fill_in "Room", with: @room_image.room_id
    click_on "Update Room image"

    assert_text "Room image was successfully updated"
    click_on "Back"
  end

  test "destroying a Room image" do
    visit room_images_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room image was successfully destroyed"
  end
end
