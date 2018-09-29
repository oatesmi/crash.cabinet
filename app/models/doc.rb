class Doc < ApplicationRecord
  belongs_to :user
  validates :title, :content, presence: true
  validates_associated :user
end
