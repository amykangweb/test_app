class Post < ActiveRecord::Base
  default_scope -> { order('created_at DESC') }
  validates :title, presence: true
  validates :content, presence: true
  has_many :comments, dependent: :destroy
  has_many :cats, dependent: :destroy
  has_many :peeps, through: :comments, source: :peeps
end
