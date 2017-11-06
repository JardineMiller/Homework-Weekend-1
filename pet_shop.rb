def pet_shop_name(shop)
	return shop[:pets]
end

def total_cash(shop)
	return shop[:admin][:total_cash]
end

def add_or_remove_cash(shop, amount)
	current_cash = shop[:admin][:total_cash]
	new_cash = current_cash + amount
	shop[:admin][:total_cash] = new_cash
end

def pets_sold(shop)
	return shop[:admin][:pets_sold]
end

def increase_pets_sold(shop, amount)
	current_pets_sold = shop[:admin][:pets_sold]
	new_pets_sold = current_pets_sold + amount
	shop[:admin][:pets_sold] = new_pets_sold
end

def stock_count(shop)
	return shop[:pets].length
end

def pets_by_breed(shop, breed)
	same_breed = []
	pets = shop[:pets]
	for pet in pets
		same_breed.push(pet) if pet[:breed] == breed
	end
	return same_breed
end

def find_pet_by_name(shop, name)
	pets = shop[:pets]
	for pet in pets
		return pet if pet[:name] == name
	end
	return nil
end

def remove_pet_by_name(shop, name)
	pets = shop[:pets]
	for pet in pets
		pets.delete(pet) if pet[:name] == name
	end
end

def add_pet_to_stock(shop, pet)
	shop[:pets] << pet
end

def customer_pet_count(customer)
	customer[:pets].count
end

def add_pet_to_customer(customer, pet)
	customer[:pets] << pet
end

def customer_can_afford_pet(customer, pet)
	return false if (customer[:cash] - pet[:price]) < 0 else return true
end

def sell_pet_to_customer(shop, pet, customer)
  if pet == nil
    return "Pet doesn't exist. Sorry."
  elsif customer_can_afford_pet(customer, pet) == false
    return "You're too poor. Shoo."
  else
    price = pet[:price]
    before_count = customer_pet_count(customer)
    add_pet_to_customer(customer, pet)
    after_count = customer_pet_count(customer)
    increase_pets_sold(shop, (after_count - before_count))
    add_or_remove_cash(shop, price)
  end
end
