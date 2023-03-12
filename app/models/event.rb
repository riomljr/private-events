class Event < ApplicationRecord
  belongs_to :creator, class_name: "User"

  has_many :attending_events
  has_many :attendees, through: :attending_events, source: :user
end
