1. How many users are there?

	My answer: User.first -> User.all -> 46
  Second answer: User.all.count -> 49



2. What are the 5 most expensive items?
   
   Item.order(price: :desc).limit(5).pluck(:name)

   1. "Gorgeous Plastic Pants"
   2. "Intelligent Cotton Computer"
   3. "Small Concrete Pants"
   4. "Gorgeous Granite Pants"
   5. "Rustic Concrete Pants"


3. What's the cheapest electronics item?

   Item.order(price: :asc).where(category: :"Electronics").limit(1)

   1. "Rustic Wooden Table"


4. Who lives at "489 Fritsch Island"? Do they have another address?
   Address.where(street: "489 Frisch Island")
   User.where(id: 35)
   Address.where(user_id: 35)


5. Correct Tevin Mitchell's New York zip code to 10108.
   User.where(first_name: "Tevin")
   Address.where(user id: 25, State: "New York").limit(1).update_all(zip: 10108)


6. How much would it cost to buy one of each piece of jewelery?
   Item.where("catagory LIKE ?", "%Jewelery%").sum(:price).to_s


7. How many total items did we sell?

    Order.sum(:quantity)

    1. 817

    Order.pluck(:quantity).reduce(:+)


8. How much was spent on health?

   Item.where("category LIKE ?", "Health")

   Order.where(item_id: 1).sum(:quantity) * Item.find(1).price

   Item.where("category LIKE ?", %Health%).each do |i|
   price += i.price
   price.to_fj


9. Simulate buying an item by inserting a User for yourself and an Order for that User (do not include this in the figures above).# DataAdvance-
# DataAdvance-
# DataAdvance_Hmwk
# DataAdvance_Hmwk
# DataAdvance
