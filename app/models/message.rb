class Message < ApplicationRecord
  belongs_to :private_message, class_name: "PrivateMessage"

  belongs_to :sender, class_name: "User"
  belongs_to :recipient, class_name: "User"
end
