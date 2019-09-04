require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  # test "the truth" do
  #   assert true
  # end
  test '1' do
    get root_path
    assert_response :redirect
  end

  test '2' do
    user = users(:one)
    sign_in(user)
    get root_path
    assert_response :success
  end
end
