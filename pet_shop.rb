@pet_shop = {
        pets: [
          {
            name: "Sir Percy",
            pet_type: :cat,
            breed: "British Shorthair",
            price: 500
          },
          {
            name: "King Bagdemagus",
            pet_type: :cat,
            breed: "British Shorthair",
            price: 500
          },
          {
            name: "Sir Lancelot",
            pet_type: :dog,
            breed: "Pomsky",
            price: 1000,
          },
          {
            name: "Arthur",
            pet_type: :dog,
            breed: "Husky",
            price: 900,
          },
          {
            name: "Tristan",
            pet_type: :dog,
            breed: "Basset Hound",
            price: 800,
          },
          {
            name: "Merlin",
            pet_type: :cat,
            breed: "Egyptian Mau",
            price: 1500,
          }
        ],
        admin: {
          total_cash: 1000,
          pets_sold: 0,
        },
        name: "Camelot of Pets"
      }

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
	number_of_breed = []
	pets = hash[:pets]
	for pet in pets
		if pet[:breed] == breed
			number_of_breed.push(pet)
		end
	end
	return number_of_breed
end

def find_pet_by_name(hash, name)
	pets = hash[:pets]
	for pet in pets
		if pet[:name] == name
			return pet
		end
	end
	return nil
end

def remove_pet_by_name(hash, name)
	pets = hash[:pets]
	for pet in pets
		if pet[:name] == name
			pets.delete(pet)
		end
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

