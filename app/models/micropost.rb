class Micropost < ActiveRecord::Base
  belongs_to :user
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }
  has_attached_file :picture, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment :picture, less_than: 5.megabytes, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png", "image/gif"] }, message: 'ファイル形式が不正です。'
end
