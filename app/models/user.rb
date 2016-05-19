class User < ActiveRecord::Base
   
  has_many :favorite
  has_many :item

  validates :email,
  presence: true,
  uniqueness: {case_sensitive: false}

  validates :password, presence: true, on: :create
  
  has_secure_password







end



