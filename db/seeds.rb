puts "Cleaning the database"
Watch.destroy_all
User.destroy_all
puts "Creating some data"

reference_number = ['7463.44.67', '3456.42.89', '3546.98.41']

user_test = User.create(email: "test@gmail.com", password: "123456")

10.times do 
  watch = Watch.new(brand: 'Rolex',
                    model_year: 1989, 
                    price: 10000, 
                    condition: 'Pristine',
                    reference_number: reference_number.sample,
                   )
  watch.user = user_test
  watch.save
end

puts "Data created!"
