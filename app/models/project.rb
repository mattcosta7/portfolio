class Project < ActiveRecord::Base
  mount_uploader :photo, ImageUploader
  validates :title, presence: true, uniqueness: true
  validates :description, presence: true
end
