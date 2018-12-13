class Company < ApplicationRecord
	has_many :products, dependent: :destroy
	validates :contact , numericality:{ only_integer: true }

	scope :home_appliance_only, ->{ joins(:products).where('ptype in ("Washing machine","Television")').distinct}
end
