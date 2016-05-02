class Project < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
  acts_as_taggable
  scope :visible, -> {where(hidden: false)}
end
