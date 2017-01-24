# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :text
#  dob             :date
#  sex             :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  password_digest :string
#  avatar          :text
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
