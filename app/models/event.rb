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

class Event < ActiveRecord::Base
  has_many :rsvps
  belongs_to :user
  has_many :attending_users, :through => :rsvps, :source => :user
  scope :upcoming, -> {order("start_datetime ASC")}
end
