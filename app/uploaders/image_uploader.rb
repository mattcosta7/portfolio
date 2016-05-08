# encoding: utf-8

class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :fog

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_limit => [100, -1]
  end

  version :small do
    process :resize_to_limit => [400, -1]
  end

  version :medium do
    process :resize_to_limit => [800, -1]
  end

  version :large do
    process :resize_to_limit => [1600, -1]
  end

  def extension_white_list
    %w(jpg jpeg gif png)
  end

end
