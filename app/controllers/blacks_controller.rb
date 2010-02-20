class BlacksController < ApplicationController
  def index
    @blacks = Black.all
  end
  
  def show
    @black = Black.find(params[:id])
  end
  
  def new
    @black = Black.new
  end
  
  def create
    
    if logged_in?
      @user = current_user

    else
      @user = User.find(2)
    end

    @black = Black.new(params[:black])

    @black.user_id = @user.id


    

    if @black.save
      
      flash[:notice] = "Successfully created black."
      redirect_to @black
    else
      render :action => 'new'
    end
  end
  
  def edit
    @black = Black.find(params[:id])
  end
  
  def update
    @black = Black.find(params[:id])
    if @black.update_attributes(params[:black])
      flash[:notice] = "Successfully updated black."
      redirect_to @black
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @black = Black.find(params[:id])
    @black.destroy
    flash[:notice] = "Successfully destroyed black."
    redirect_to blacks_url
  end
end
