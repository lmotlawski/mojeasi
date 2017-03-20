class Photo < ApplicationRecord
    mount_uploader :file, PictureUploader
    has_many :comments
    belongs_to :user
    delegate :name, :to => :user, :prefix => true
    validates :title, length: { minimum: 5 }
end
