puts "Creating some data"

reference_number = ['7463.44.67', '3456.42.89', '3546.98.41']

user_vincent = User.find(1)

3.times do 
  watch = Watch.new(brand: 'Rolex',
                       model_year: 1989, 
                       price: 10000, 
                       condition: 'Prestine',
                       reference_number: reference_number.sample,
                      )
  watch.user = user_vincent
  watch.save
end

puts "Data created!"
