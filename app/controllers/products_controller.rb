class ProductsController < ApplicationController
 def create
    @company = Company.find(params[:company_id])
   # @product = @company.products.create(product_params)
   #debugger
    if @company.products.create(product_params)
      redirect_to company_path(@company)
    else
      render company_path(@company)
    end

  end
 
  private
    def product_params
      params.require(:product).permit(:name, :ptype)
    end
end
