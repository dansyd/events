# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :text
#  dob        :date
#  sex        :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#


class User < ActiveRecord::Base
  has_many :events
  has_many :rsvps
  has_many :events, :through => :rsvps
end
