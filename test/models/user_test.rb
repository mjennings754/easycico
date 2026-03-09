require "test_helper"

class UserTest < ActiveSupport::TestCase
  setup do
    @user = users(:one)
  end

  test "should not save without username" do
    @user.username = nil
    assert_not @user.valid?, "saved without username"
  end

  test "should not save without email" do
    @user.email = nil
    assert_not @user.valid?, "saved without email"
  end
end
