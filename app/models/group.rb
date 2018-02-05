class Group < ApplicationRecord
  belongs_to :access
  has_many :user
  validates :name, presence: true
end
