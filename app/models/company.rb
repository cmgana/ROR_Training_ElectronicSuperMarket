class Company < ApplicationRecord
	has_many :products, dependent: :destroy, validate: false
	validates :contact , numericality:{ only_integer: true }

	# validate do |company|
	# 	company.products.each do |product|
	# 		next if product.valid?
	# 		product.errors.full_messages.each do |msg|
	# 			errors.add_to_base(msg)
	# 		end
	# 	end
	# end

	scope :home_appliance_only, ->{ joins(:products).where('ptype in ("Washing machine","Television")').distinct}
end
