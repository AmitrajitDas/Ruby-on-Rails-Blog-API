class Blog < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true, length: { minimum: 5 }, uniqueness: true
end
