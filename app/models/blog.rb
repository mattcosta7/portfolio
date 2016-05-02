class Blog < ActiveRecord::Base
  validates :title, presence: true, uniqueness: true
  validates :body, presence: true
  acts_as_taggable

  scope :visible, -> {where(hidden: false)}
end
