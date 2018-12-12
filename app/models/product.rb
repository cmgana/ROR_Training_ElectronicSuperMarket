class Product < ApplicationRecord
  belongs_to :company
  validate :product_type #,message: "Invalid product type"

  private
  def product_type
    prod_type = ["Washing Machine","Television","Dish Washer","Rice Cooker"];

    if prod_type.index(ptype) == nil
      errors[:base] << "Invalid product type"
      end
  end
end
