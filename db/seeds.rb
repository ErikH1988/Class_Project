# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Advertisement.create(format: 'Elle - FPC', 
					bleed_height: '295', bleed_width: '230', 
					trim_height: '285', trim_width: '220',
					type_height: '265', type_width: '200')
Advertisement.create(format: 'Vogue - FPC', 
					bleed_height: '307', bleed_width: '120', 
					trim_height: '297', trim_width: '220',
					type_height: '281', type_width: '204')
Advertisement.create(format: 'Harpers - FPC', 
					bleed_height: '307', bleed_width: '224', 
					trim_height: '297', trim_width: '215',
					type_height: '227', type_width: '195')
#Advertisment.create(format: ' - FPC', 
#					bleed_height: '00', bleed_width: '00', 
#					trim_height: '00', trim_width: '00',
#					type_height: '00', type_width: '00')