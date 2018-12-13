class ProductsController < ApplicationController
 def create
    @company = Company.find(params[:company_id])
    @product = @company.products.build(product_params)
   #debugger
    if @product.save
      redirect_to company_path(@company)
    else
     render "companies/show"
    end

  end
 
  private
    def product_params
      params.require(:product).permit(:name, :ptype)
    end
end
