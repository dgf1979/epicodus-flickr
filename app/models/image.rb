class Image < ActiveRecord::Base
  belongs_to :user
  validates :file, :presence => true
  validates :user_id, :presence => true

  has_attached_file :file, :styles => {
    :medium => "300x300",
    :thumb => "100x100#"
  }, :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :file, :content_type => ['image/png', 'image/jpg', 'image/jpeg']
end
