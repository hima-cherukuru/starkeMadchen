class User < ActiveRecord::Base
  attr_accessible :email, :name
  
  validates :name, presence: true, length: {minimum:7, maximum: 50}
  validates :email, presence: true
end
