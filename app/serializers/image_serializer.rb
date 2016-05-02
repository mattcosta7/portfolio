class ImageSerializer < ActiveModel::Serializer
  attributes :id, :title, :created_at, :updated_at, :photo, :album, :exposure, :f_stop, :focal_length, :iso, :date, :camera_model, :tag_list

  def album
    object.album
  end
end
