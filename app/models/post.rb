class Post < ApplicationRecord
  has_attached_file :image, style:  { large: "600x600>", medium: "300x300>", thumb: "150x150#"},
  default_url: "images/000/000/003/original/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
   has_many :comments, dependent: :destroy
end
