class Image < ActiveRecord::Base
  acts_as_taggable
  mount_uploader :photo, ImageUploader
  belongs_to :album
  scope :visible, -> {where(hidden: false)}
  def update_exif_info(exif)
    self.exposure = exif.exposure_time.to_s if exif.exposure_time
    self.f_stop = exif.f_number.to_f.to_s if exif.f_number
    self.focal_length = exif.focal_length.to_f.round.to_s if exif.focal_length
    self.iso = exif.iso_speed_ratings if exif.iso_speed_ratings
    self.date = exif.date_time.to_date.to_s if exif.date_time
    self.camera_model = exif.model.to_s if exif.model
  end

end
