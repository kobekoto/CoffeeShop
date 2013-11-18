# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "=== Creating Seed Users ==="

users = User.create([
	{ name: "Kobe Koto", email: "kobe.koto@gmail.com", password: "password", password_confirmation: "password",  :avatar => File.new("#{Rails.root}/app/assets/images/user_uploads/djpic.jpg"), address: "11238" },
	{ name: "Prince Akeem", email: "princeakeem@example.com", password: "foobar", password_confirmation: "foobar",  :avatar => File.new("#{Rails.root}/app/assets/images/user_uploads/coming_to_america.jpg"), address: "11206" },
	{ name: "William Hung", email: "will.hung@example.com", password: "foobar", password_confirmation: "foobar",  :avatar => File.new("#{Rails.root}/app/assets/images/user_uploads/william_hung.jpg"), address: "10014" }
	])

puts "=== Seeding Neighborhoods ==="

neighborhoods = Neighborhood.create([ 
	{ name: 'Chelsea',							coordinates: '40.7497717, -73.9976946', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/chelsea.jpg") },
	{ name: 'Chinatown',						coordinates: '40.7157509, -73.9970307', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/chinatown.jpg") },
	{ name: 'East Village', 				coordinates: '40.7264773, -73.98153370000001', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/eastvillage.jpg") },
	{ name: 'Financial District', 	coordinates: '40.704108, -74.01275609999999', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/financialdistrict.jpg") },
	{ name: 'Gramercy',							coordinates: '40.737519, -73.981848', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/gramercyflatiron.jpg") },
	{ name: 'Greenwich Village', 		coordinates: '40.735781, -74.0035709', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/greenwichvillage.jpg") },
	{ name: 'Harlem', 							coordinates: '40.8113824, -73.9447994', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/harlem.jpg") },
	{ name: 'Lower East Side', 			coordinates: '40.7135097, -73.9859414', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/les.jpg") },
	{ name: 'Midtown East', 				coordinates: '40.7540369, -73.9668408', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/midtowneast.jpg") },
	{ name: 'Midtown West', 				coordinates: '40.7637581, -73.9918181', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/midtownwest.jpg") },
	{ name: 'Morningside Heights', 	coordinates: '40.8089564, -73.96243270000001', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/morningside.jpg") },
	{ name: 'Nolita & Little Italy',coordinates: '40.7131667, -74.0093111', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/nolita.jpg") },
	{ name: 'Soho', 								coordinates: '40.723384, -74.001704', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/soho.jpg") },
	{ name: 'Tribeca', 							coordinates: '40.7166005, -74.0111162', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/tribeca.jpg") },
	{ name: 'Upper East Side', 			coordinates: '40.7735649, -73.9565551', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/uppereastside.jpg") },
	{ name: 'Upper West Side',			coordinates: '40.7859464, -73.97418739999999', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/upperwestside.jpg") },
	{ name: 'Washington Heights', 	coordinates: '40.8401451, -73.93892129999999', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/washingtonheights.jpg") },
	{ name: 'West Village', 				coordinates: '40.735781, -74.0035709', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/westvillage.jpg") },
	{ name: 'Bay Ridge', 						coordinates: '40.6261638, -74.03294989999999', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/bayridge.jpg") },
	{ name: 'Bedford-Stuyvesant', 	coordinates: '40.6849961, -73.9418603', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/bedfordstuyvesant.jpg") },
	{ name: 'Bushwick', 						coordinates: '40.6944282, -73.92128579999999', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/bushwick.jpg") },
	{ name: 'Brooklyn Heights', 		coordinates: '40.6960105, -73.9932872', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/bkheights.jpg") },
	{ name: 'Carroll Gardens', 			coordinates: '40.6795331, -73.9991637', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/carrollgowanus.jpg") },
	{ name: 'Cobble Hill', 					coordinates: '40.686536, -73.9962255', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/cobbleboerumhill.jpg") },
	{ name: 'DUMBO', 								coordinates: '40.7030556, -73.9894444', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/dumbo.jpg") },
	{ name: 'Ft. Greene/Clinton Hill', 					coordinates: '40.6920638, -73.97418739999999', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/fortgreene.jpg") },
	{ name: 'Greenpoint', 					coordinates: '40.7245448, -73.9418603', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/greenpoint.jpg") },
	{ name: 'Park Slope', 					coordinates: '40.6681669, -73.9800645', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/parkslope.jpg") },
	{ name: 'Prospect Heights', 		coordinates: '40.6774196, -73.9668408', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/prospectheights.jpg") },
	{ name: 'Williamsburg', 				coordinates: '40.7064461, -73.9536163', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/williamsburg.jpg") },
	{ name: 'Astoria', 							coordinates: '40.7623925, -73.9301037', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/astoria.jpg") },
	{ name: 'Long Island City', 		coordinates: '40.744679, -73.9485424', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/longislandcity.jpg") },
	{ name: 'Sunnyside', 						coordinates: '40.7432759, -73.9196324', :avatar => File.new("#{Rails.root}/app/assets/images/neighborhoods/sunnyside.jpg") },
	])

# puts "=== Seeding Neighborhood Shop Info ==="

# Neighborhood.all.each do |neighborhood|
# 	Shop.create_shop_info(neighborhood)
# end


# puts "=== Seeding Shop Photos ==="

# Shop.all.each do |shop|
#   Photo.create_photo(shop)
# end
