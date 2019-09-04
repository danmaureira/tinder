require 'test_helper'

class InteractionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test 'Si dos se dan like genera un match' do
    sender = users(:one)
    reciever = users(:two)
    interaction = Interaction.new(user_one: reciever, user_two: sender, like: true).save!
    assert_equal 1, Match.count
  end
end
