class Post1 < ApplicationRecord

belongs_to :user
# has_attached_file :image, styles: { small: "200x200", medium: "300x300>", thumb: "150x150>" }, default_url: "/images/:style/missing.png"
# validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
