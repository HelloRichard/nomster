class Place < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true
  validates :name, length: {minimum: 2}
  validates :address, presence: true
  validates :description, presence: true
end
