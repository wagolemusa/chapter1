class DanidsController < ApplicationController

def index
	
end
def new
	@danid = Danid.new
end

def create
	@danid = Danid.new(danid_params)
	if @danid.save
		flash[:notice] = "Article was successfully craated"
	redirect_to danid_path(@danid)
else
	render 'new'
end
end

def edit
	@danid = Danid.find(params[:id])
	
end
def update
	@danid = Danid.find(params[:id])
	if @danid.update(danid_params)
		flash[:notice] = "Article was successfully update"
		redirect_to danid_path(@danid)
	else
		render 'edit'
	end
end

def show
	@danid = Danid.find(params[:id])
	
end

def destroy
	@danid = Danid.find(params[:id])
	@danid.destroy
	flash[:notice] = "Article was successfully deleted"
	redirect_to danid_path
	
end

def delete
	
end

private

def danid_params 
	params.require(:danid).permit(:title, :description)
	
end

end