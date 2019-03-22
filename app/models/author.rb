class Author < ApplicationRecord
  belongs_to :posts
  validates :name, :login, :email, presence: true
end
