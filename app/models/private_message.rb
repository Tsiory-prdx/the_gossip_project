class PrivateMessage < ApplicationRecord
  has_many :messages
  has_many :recipients, through: :messages, class_name: "User"
  belongs_to :sender, class_name: "User"
end
