class Jobcard < ActiveRecord::Base
  belongs_to :vehicle
  validates :estimated_cost, :vehicle_id, :date_arrival, :date_delivery, presence: true  
  validates_numericality_of :estimated_cost, :greater_than_or_equal_to => 0
  validate :end_date_after_start_date?
 
def end_date_after_start_date?
  return if date_delivery.blank?
  if date_delivery < date_arrival
    errors.add :date_delivery, "must be after Data of Job Card Creation"
  end
end



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