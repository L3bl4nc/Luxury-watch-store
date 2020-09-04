require "open-uri"

puts "Cleaning the database..."
Watch.destroy_all
User.destroy_all

puts "Database clean!"

puts "Creating some data..."

references_number = ['7463.44.67', '3456.42.89', '3546.98.41', '4533.23.49', '8265.04.91']
conditions = ['New', 'Pristine', 'Very Good', 'Okay']
prices = [10000, 15000, 20000, 25000, 30000, 40000, 50000]
models_year = [1970...2020]

user_test_1 = User.create(email: "test_1@gmail.com", password: "123456")
user_test_2 = User.create(email: "test_2@gmail.com", password: "123456")

watch_1 = Watch.new(brand: 'Rolex',
                    model_year: models_year.sample, 
                    price: prices.sample, 
                    condition: conditions.sample,
                    reference_number: references_number.sample,
                   )
watch_1_file = URI.open("https://res.cloudinary.com/dnygdmomh/image/upload/v1598713997/Watches/Rolex_Datejust_akxpza.jpg")                
watch_1.photo.attach(io: watch_1_file, filename: 'Rolex_Datejust_akxpza.jpg')            
watch_1.user = user_test_1
watch_1.save

# watch_2 = Watch.new(brand: 'Omega',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_2.photo.attach(io: watch_photo_file, filename: 'Omega_speedmaster_ajduv7.jpg')      
# watch_2.user = user_test_1
# watch_2.save

# watch_3 = Watch.new(brand: 'Breitling',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_3.photo.attach(io: watch_photo_file, filename: 'Breitling-Colt-Automatic_ynfe0k.jpg')            
# watch_3.user = user_test_1
# watch_3.save

# watch_4 = Watch.new(brand: 'IWC',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_4.photo.attach(io: watch_photo_file, filename: 'IWC-Schaffhausen-Mark-XVIII_fwm5go.jpg')            
# watch_4.user = user_test_1
# watch_4.save

# watch_5 = Watch.new(brand: 'Audemars Piguet',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_5.photo.attachpg(io: watch_photo_file, filename: 'Audemars-Piguet-Royal-Oak_uz7uvh.jpg')          
# watch_5.user = user_test_1
# watch_5.save

# watch_6 = Watch.new(brand: 'Patek Phillippe',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_6.photo.attach(io: watch_photo_file, filename: 'Patek-Philippe-Aquanaut_oablh.jpg')            
# watch_6.user = user_test_2
# watch_6.save

# watch_7 = Watch.new(brand: 'TAG Heuer',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_7.photo.attach(io: watch_photo_file, filename: 'TAG-Heuer-Formula-1-Calibre-5.jpg')           
# watch_7.user = user_test_2
# watch_7.save

# watch_8 = Watch.new(brand: 'Hublot',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_8.photo.attach(io: watch_photo_file, filename: 'Hublot-Classic-Fusion_bkirvj.jpg')            
# watch_8.user = user_test_2
# watch_8.save

# watch_9 = Watch.new(brand: 'Panerai',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_9.photo.attach(io: watch_photo_file, filename: 'Panerai-Luminor-Base-Logo-3-Days_oqjezp.jpg')           
# watch_9.user = user_test_2
# watch_9.save

# watch_10 = Watch.new(brand: 'Cartier',
#                     model_year: models_year.sample, 
#                     price: prices.sample, 
#                     condition: conditions.sample,
#                     reference_number: references_number.sample,
#                    )
# watch_10.photo.attach(io: watch_photo_file, filename: 'Cartier-Tank-Solo-XL_dqmxoy.jpg')         
# watch_10.user = user_test_2
# watch_10.save

puts "Data created!"
