class User < ActiveRecord::Base
   
  has_many :favorite
  has_many :item

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false}

  validates :password, presence: true, on: :create
  
  has_secure_password

  def set_password_reset
  # this will ensure users with duplicate codes
  self.reset_code = loop do 
    code = SecureRandom.urlsafe_base64
    break code unless User.exists?(reset_code: code)
  end
  # set the expiration date with some handy date methods
  self.expires_at = 4.hours.from_now
  self.save!
  end

  def self.authenticate(email, password)
    User.find_by_email(email).try(:authenticate, password)
  end






end



