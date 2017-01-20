class Customer < ActiveRecord::Base
  validates :cust_Name, presence: true, length: {minimum:3, maximum:50}
  validates :cust_Add, presence: true, length: {minimum:3, maximum:50}
  validates :cust_mobile, presence: true, length: { :is => 10 }, uniqueness: true, numericality: true
  validates_format_of :cust_email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  

end  