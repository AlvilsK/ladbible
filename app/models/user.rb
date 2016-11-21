class User < ApplicationRecord
  
  before_save :downcase_email
  
  validates :name, presence: true, length: { in: 2..15 }
  
  
  # Email validation.
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-zA-Z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }
  
  private
  
  def downcase_email
    email.downcase!
  end
end
