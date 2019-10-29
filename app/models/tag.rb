class Tag < ApplicationRecord
  has_many :tags_in_gossips, dependent: :destroy
  has_many :gossips, through: :tags_in_gossips
end
