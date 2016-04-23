class Cat < ActiveRecord::Base
  belongs_to :post
  has_many :comments, class_name: "Comment", through: :post
end
