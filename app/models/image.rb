class Image < ActiveRecord::Base
  acts_as_taggable
  mount_uploader :photo, ImageUploader
  belongs_to :album
end
