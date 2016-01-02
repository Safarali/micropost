require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Welcome to micropost"
  end

  test "should get help" do
    get :help
    assert_response :success
    assert_select "title", "Help | Welcome to micropost"
  end
  
  test "should get about" do
  	get :about
  	assert_response :success
    assert_select "title", "About | Welcome to micropost"
  end

  test "should get contact" do
    get :about
    assert_response :success
    assert_select "title", "About | Welcome to micropost"
  end


end
