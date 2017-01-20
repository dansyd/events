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

class Rsvp < ActiveRecord::Base
  belongs_to :user
  belongs_to :event
end
