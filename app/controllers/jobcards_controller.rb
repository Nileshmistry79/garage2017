class JobcardsController <ApplicationController
  
 before_action :set_all_vars, only: [:new,:create,:search]    
  
def new

end  

def search
  if params[:id]
      @vehicle_cust=Jobcard.new_from_lookup(params[:id])
     render partial: 'lookup'
  end
  

  
end  
  
private
    def set_all_vars
        @jobcard=Jobcard.new
        @all_vehicle=Vehicle.all
    end  
  
  
end  