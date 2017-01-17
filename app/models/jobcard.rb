class Jobcard < ActiveRecord::Base
  belongs_to :vehicle
  



def self.new_from_lookup(ticker_id)
 looked_id=Vehicle.find(ticker_id)
 looked_name=Customer.find(looked_id.customer_id)
 return looked_name
end  


end