class Product < ApplicationRecord
  belongs_to :company
  validate :product_type
  # accepts_nested_attributes_for :company, reject_if: :invalid_Ptype

  private

  def invalid_Ptype(attributes)
    prod_type = ["Washing Machine", "Television", "Dish Washer", "Rice Cooker"];
    prod_type.index(attributes['title']) < 0

  end

  def product_type
    prod_type = ["Washing Machine", "Television", "Dish Washer", "Rice Cooker"];
    if prod_type.index(ptype) == nil
      errors.add(:base, 'Invalid product type')
    end
  end
end
