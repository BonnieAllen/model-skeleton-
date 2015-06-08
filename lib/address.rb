class Address < ActiveRecord::Base
	has_many :user
	has_many :users#, through: :oders 

	def gross
		(orders.sum(:quantity) * price).to_f
	end

	def users_ordered
		users.count
	end
end