# == Schema Information
#
# Table name: rsvps
#
#  id         :integer          not null, primary key
#  event_id   :integer
#  user_id    :integer
#  status     :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class RsvpTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
