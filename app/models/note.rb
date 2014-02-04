class Note < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { maximum: 1000 }


end
