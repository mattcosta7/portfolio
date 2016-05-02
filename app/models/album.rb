class Album < ActiveRecord::Base
  has_many :images, dependent: :destroy
  validates :name, presence: true, uniqueness: true

  scope :visible, -> {where(hidden: false)}
end
