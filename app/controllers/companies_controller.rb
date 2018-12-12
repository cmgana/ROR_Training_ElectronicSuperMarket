class CompaniesController < ApplicationController
  #http_basic_authenticate_with name: "gana", password: "12345", except: [:index, :show]

def index
	@companies = Company.all

end


def index_home_appliance
	@companies = Company.home_appliance_only

end

def edit
	@company = Company.find(params[:id])
end

def show
	@company = Company.find(params[:id])	
end

def new
	@company = Company.new
end

def create
	@company = Company.new (company_params)
	if @company.save
		redirect_to action: 'index'
	else
		render 'new'
	end
end

def update
	@company = Company.find(params[:id])
	if @company.update(company_params)
		redirect_to @company
	else
		render 'edit'
	end

end

def destroy
  @company = Company.find(params[:id])
  @company.destroy
 
  redirect_to companies_path
end

 def company_params
    params.require(:company).permit(:name, :headoffice, :contact)
  end

end
