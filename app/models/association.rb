class Association < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :email, uniqueness: true
  has_many_attached :photos
end
