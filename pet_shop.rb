def pet_shop_name(hash)
	return hash[:name]
end

def total_cash(hash)
	return hash[:admin][:total_cash]
end

def add_or_remove_cash(hash, amount)
	current_cash = hash[:admin][:total_cash]
	new_cash = current_cash + amount
	hash[:admin][:total_cash] = new_cash
end

def pets_sold(hash)
	return hash[:admin][:pets_sold]
end

def increase_pets_sold(hash, amount)
	current_pets_sold = hash[:admin][:pets_sold]
	new_pets_sold = current_pets_sold + amount
	hash[:admin][:pets_sold] = new_pets_sold
end

def stock_count(hash)
	return hash[:pets].length
end

def pets_by_breed(hash, breed)
	same_breed = []
	pets = hash[:pets]
	for pet in pets
		same_breed.push(pet) if pet[:breed] == breed
	end
	return same_breed
end

def find_pet_by_name(hash, name)
	pets = hash[:pets]
	for pet in pets
		return pet if pet[:name] == name
	end
	return nil
end

def remove_pet_by_name(hash, name)
	pets = hash[:pets]
	for pet in pets
		pets.delete(pet) if pet[:name] == name
	end
end

def add_pet_to_stock(hash, pet)
	hash[:pets] << pet
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

