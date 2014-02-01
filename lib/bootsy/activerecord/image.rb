module Bootsy
  class Image < ActiveRecord::Base
    attr_accessible :image_file

    belongs_to :image_gallery, touch: true

    mount_uploader :image_file, ImageUploader

    validates_presence_of :image_file, :image_gallery_id
  end
end
