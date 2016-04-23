class Comment < ActiveRecord::Base
  default_scope -> { order('created_at DESC') }
  belongs_to :post, touch: true
  has_many :peeps, dependent: :destroy
end
