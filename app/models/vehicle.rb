class Vehicle < ActiveRecord::Base
      belongs_to :customer
      before_save { self.vehicle_no =vehicle_no.upcase}
      validates :vehicle_no, uniqueness: { case_sensitive: false}
      validates_format_of :vehicle_no, :with => /\A^[A-Za-z]{2}[a-zA-Z0-9]{3,}$\z/, messages: "Invalid Vehcile Number format"
      validates :Model_name, presence: true, length: {minimum:3, maximum:10}
      validates :customer_id, presence: true
      
      
      
      
end