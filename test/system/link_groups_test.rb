require "application_system_test_case"

class LinkGroupsTest < ApplicationSystemTestCase
  setup do
    @link_group = link_groups(:one)
  end

  test "visiting the index" do
    visit link_groups_url
    assert_selector "h1", text: "Link groups"
  end

  test "should create link group" do
    visit link_groups_url
    click_on "New link group"

    fill_in "Title", with: @link_group.title
    click_on "Create Link group"

    assert_text "Link group was successfully created"
    click_on "Back"
  end

  test "should update Link group" do
    visit link_group_url(@link_group)
    click_on "Edit this link group", match: :first

    fill_in "Title", with: @link_group.title
    click_on "Update Link group"

    assert_text "Link group was successfully updated"
    click_on "Back"
  end

  test "should destroy Link group" do
    visit link_group_url(@link_group)
    click_on "Destroy this link group", match: :first

    assert_text "Link group was successfully destroyed"
  end
end
