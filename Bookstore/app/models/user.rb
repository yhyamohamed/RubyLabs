class User < ApplicationRecord
  has_secure_password

  validates :email,presence: true,format: {with: /\A[^@\s]+@[^@\s]+\z/,message: 'pls enter a valid email address'}
end
