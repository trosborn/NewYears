class Comment < ActiveRecord::Base
  belongs_to :user
  validates :body, presence: true,
                    :length => {:within => 5 .. 500}
  belongs_to :commentable, polymorphic: true
end
