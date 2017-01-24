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
#  user_id        :integer
#  image          :text
#

class Event < ActiveRecord::Base
  has_many :rsvps
  belongs_to :user
  has_many :attending_users, :through => :rsvps, :source => :user
  scope :upcoming, -> {order("start_datetime ASC")}

  def attending_status(user)
    return nil unless user.present?

    rsvp = self.rsvps.find_by_user_id(user)
    return nil unless rsvp.present?

    return rsvp.status
  end

  
end
