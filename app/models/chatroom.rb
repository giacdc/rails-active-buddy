class Chatroom < ApplicationRecord
  belongs_to :event
  belongs_to :creator, class_name: "User"
  has_one :participant, class_name: "User"
  has_many :messages, dependent: :destroy
  has_many :users
end
