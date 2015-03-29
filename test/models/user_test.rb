require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup # automatically run before each test
    @user = User.new(name: "John", email: "john@post.com",
                  password: "test12", password_confirmation: "test12")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should exist" do 
    @user.name = ""
    assert_not @user.valid?
  end

  test "email should exist" do 
    @user.email = ""
    assert_not @user.valid?
  end

  test "email should be unique" do 
    another_user = User.new
    another_user.email = @user.email
    assert_not another_user.valid?
  end

  test "name should not be longer than 50 chars" do 
    @user.name = "x" * 51
    assert_not @user.valid?
  end

  test "email shoul not be longer than 255 chars" do 
    @user.email = "x" * 250 + "@post.com"
    assert_not @user.valid?
  end

  test "system should accept valid email" do 
    @user.email = "tom@post.com"
    assert @user.valid?
  end

  test "system should not accept invalid email" do 
    @user.email = "tom@post"
    assert_not @user.valid?
  end
  
  test "password should have at least 6 chars" do 
    @user.password = @user.password_confirmation = "x" * 5
    assert_not @user.valid?
  end

end
