class Like < ApplicationRecord
  belongs_to :user
  belongs_to :photo

  validates_uniqueness_of :user_id => [:user_id, :photo_id]
  validates :photo_id, presence: true
end
