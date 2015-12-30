class CathegoriesController < ApplicationController
   def index
    @cathegories = Cathegory.all
    end
  
  def show
    @cathegory = Cathegory.find(params[:id])
  end
    
    def new
        @cathegory = Cathegory.new
    end
    
    def edit
        @cathegory = Cathegory.find(params[:id])
    end
      
    def create
        @cathegory = Cathegory.new(cathegory_params)
        if @cathegory.save
        redirect_to @cathegory
        else
        render 'new'
        end
    end
   
    def update
    @cathegory = Cathegory.find(params[:id])
        if @cathegory.update(cathegory_params)
        redirect_to @cathegory
        else
        render 'edit'
        end
    end
    
    def destroy
        @cathegory = Cathegory.find(params[:id])
        @cathegory.destroy
        redirect_to cathegories_path
    end

 private
  def cathegory_params
    params.require(:cathegory).permit(:cat, :description)
  end
end

