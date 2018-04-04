class User < ActiveRecord::Base
    has_many :messages
    has_many :posts
    has_many :owners
    has_many :comments
    has_many :comments, as: :commentable
    has_many :blogs, through: :owners
    validates :first_name, :last_name, :email_address, presence: true
end
