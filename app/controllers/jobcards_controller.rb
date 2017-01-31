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

  def show
    @jobcard=Jobcard.find(params[:id])
    
  respond_to do |format|
      format.html
     format.pdf do
        render pdf: "file_name", template: 'jobcards/show.html.erb'  # Excluding ".pdf" extension.
      end
    end  
    
    
  end
  


def create
  #render plain: params[:jobcard].inspect
  @jobcard=Jobcard.new(jobcard_parmas)
  @jobcard.date_arrival=Time.now()
    if @jobcard.save
      flash[:notice]= "New Jobcard Saved"
      redirect_to jobcard_path(@jobcard)
    else
      render 'new'
   end

end


  
private
    def set_all_vars
        @jobcard=Jobcard.new
        @all_vehicle=Vehicle.all
    end  
    
    def jobcard_parmas
      params.require(:jobcard).permit!
    end
  
end  