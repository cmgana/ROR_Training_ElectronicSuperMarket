class Company < ApplicationRecord
	has_many :products, dependent: :destroy
	validates :contact , numericality:{ only_integer: true }
end
