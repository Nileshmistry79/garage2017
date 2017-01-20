class Jobcard < ActiveRecord::Base
  belongs_to :vehicle
  



def self.new_from_lookup(ticker_id)
 looked_id=Vehicle.find_by_id(ticker_id)

 if looked_id  
  looked_name=Customer.find(looked_id.customer_id)
 else
  looked_name=nil
 end 

 return looked_name

end  


end