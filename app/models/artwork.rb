class Artwork < ApplicationRecord
  validates :title, presence: true
  validates :author, presence: true
  validates :date, presence: true
  validates :typeof, presence: true

  include ImageUploader::Attachment(:image)
  has_and_belongs_to_many :collections
end
