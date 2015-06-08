class Item < ActiveRecord::Base
	def gross
		order_quantity = Order.where(item_id).sum(:quantity)
		(order_quantity * price).to_f
	end
end