class JobcardsController <ApplicationController
  
 before_action :set_all_vars, only: [:new,:create,:search]    
  
def new

end  

def search
  if params[:id]
      @vehicle_cust=Jobcard.new_from_lookup(params[:id])
  if @vehicle_cust
      #render json: @vehicle_cust
      ##==>WORS==>render partial 'lookup'
     render partial: 'lookup', formats: :html
  end  
  
  end
  

  
end  
  
private
    def set_all_vars
        @jobcard=Jobcard.new
        @all_vehicle=Vehicle.all
    end  
  
  
end  