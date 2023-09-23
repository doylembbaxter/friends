require "test_helper"

class LinkGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @link_group = link_groups(:one)
  end

  test "should get index" do
    get link_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_link_group_url
    assert_response :success
  end

  test "should create link_group" do
    assert_difference("LinkGroup.count") do
      post link_groups_url, params: { link_group: { title: @link_group.title } }
    end

    assert_redirected_to link_group_url(LinkGroup.last)
  end

  test "should show link_group" do
    get link_group_url(@link_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_link_group_url(@link_group)
    assert_response :success
  end

  test "should update link_group" do
    patch link_group_url(@link_group), params: { link_group: { title: @link_group.title } }
    assert_redirected_to link_group_url(@link_group)
  end

  test "should destroy link_group" do
    assert_difference("LinkGroup.count", -1) do
      delete link_group_url(@link_group)
    end

    assert_redirected_to link_groups_url
  end
end
