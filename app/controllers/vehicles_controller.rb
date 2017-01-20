class VehiclesController <ApplicationController
before_action :set_vehicle, only: [:edit, :update, :show, :destroy] 
before_action :set_all_vehicle, only: [:new,:create]   

def new
end 

def edit
end

def update
end

def destroy
end  

def myindex
  @vehicle_all=Vehicle.where(customer_id:params[:id])
  @my_customer=Customer.find(params[:id])
end


  def create
    #render plain: params[:vehicle].inspect
    @vehicle=Vehicle.new(vehcile_parmas)
    
    if @vehicle.save
      flash[:notice]= "New Vehcile Saved"
      redirect_to vehicle_path(@vehicle)  
    else
      render 'new'
    end  
    #
  end

end


def show
    
end


private
    def set_vehicle
      @vehicle=Vehicle.find(params[:id])
    end
    
    def set_all_vehicle
      @vehicle=Vehicle.new
       @all_customer=Customer.all
    
    end  


def vehcile_parmas
    params.require(:vehicle).permit(:vehicle_no, :Model_name, :customer_id)
end   
