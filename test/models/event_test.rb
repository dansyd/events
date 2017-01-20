# == Schema Information
#
# Table name: events
#
#  id             :integer          not null, primary key
#  name           :text
#  location       :text
#  start_datetime :datetime
#  end_datetime   :datetime
#  description    :text
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
