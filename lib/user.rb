class User < ActiveRecord::Base
	belongs_to :item
	belongs_to :item
	def addresses
		return Address.where(user_id: id)
	end

	has_many :orders
	has_many :items, through: :oders 

	def most_expensive_item_ordered
		# orders = Orders.where(user_id: id)
		# items_ids = orders.pluck :item_id
		# items = Item.where(id: item_ids)
		 items.max_by { |i| i.price }
	end
end