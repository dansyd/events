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

class User < ActiveRecord::Base
  has_many :events
  has_many :rsvps
  has_many :attending_events, :through => :rsvps, :source => :event
  has_secure_password
  validates :email, :presence => true, :uniqueness => true, :length => {:minimum => 5}
end
