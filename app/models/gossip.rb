class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tags_in_gossips, dependent: :destroy
  has_many :tags, through: :tags_in_gossip
end
