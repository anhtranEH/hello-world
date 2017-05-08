class Article < ActiveRecord::Base
  mount_uploader :original, MemeUploader
  mount_uploader :rendered, MemeUploader
  validates :title, presence: true
end
