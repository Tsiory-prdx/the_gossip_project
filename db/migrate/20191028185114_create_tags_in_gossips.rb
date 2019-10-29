class CreateTagsInGossips < ActiveRecord::Migration[6.0]
  def change
    create_table :tags_in_gossips do |t|
      t.references :gossip, foreign_key: true
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
