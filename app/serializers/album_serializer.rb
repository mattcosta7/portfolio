class AlbumSerializer < ActiveModel::Serializer
  attributes :id, :name, :images
  has_many :images

end
