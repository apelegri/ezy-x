# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Flat.destroy_all
flat = Flat.new(property_type: "Appartement, Paris 15ième" ,
                price: "650000",
                room_number: "3",
                square_meters: "80",
                pieces_number: "3",
                description: "C'est un bien moderne, lumineux avec vue sur parc. Avec tout le confort requis pour une famille. ",
                bathroom: "Salle de bain",
                wc: "Toillette",
                terrace: "Terrasse",
                floor: "3ième Etage",
                cellar: "Cave",
                heating: "Chauffage Electrique",
                around_description: "A proximité de l'appartement, il y a des écoles, bouche de métro et commerce.",
                opinion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fermentum est non eros accumsan rhoncus. Suspendisse in tellus vitae elit placerat iaculis sed vitae augue. Nunc eget gravida velit, quis aliquam tortor. Etiam fringilla, odio vitae elementum interdum, magna nulla malesuada magna, vel pellentesque erat turpis et augue. Vivamus sollicitudin ut neque vitae tempus. Vestibulum et diam urna. Vestibulum vel pulvinar est, eget cursus mi. Suspendisse at elit sed purus commodo gravida. Quisque cursus convallis nibh, eu faucibus est porta vel. Nulla quis tempor tellus, sed euismod justo. Morbi cursus facilisis erat, vel tristique nisi venenatis id. Cras dolor metus, volutpat vel eros pretium, convallis consequat lectus. Morbi id eros dignissim, facilisis metus a, egestas lacus. Donec varius lorem diam, quis vestibulum diam scelerisque vitae. Fusce in aliquet odio. Cras elit leo, porttitor nec pulvinar sagittis, ultricies sit amet justo.",
                metro: "Métro: Ligne 6, ligne 7",
                bus: "Bus : 88, 98",
                school: "Maternelle, Primaire, Collège, Lycée",
                shop: "Carrefour (-5 min), Boulangerie/ Baker (-2 min)",
                address: "366 rue vaugirard")

flat.save!
flat = Flat.new(property_type: "Appartement, Paris 15ième" ,
                price: "650000",
                room_number: "3",
                square_meters: "80",
                pieces_number: "3",
                description: "C'est un bien moderne, lumineux avec vue sur parc. Avec tout le confort requis pour une famille. ",
                opinion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fermentum est non eros accumsan rhoncus. Suspendisse in tellus vitae elit placerat iaculis sed vitae augue. Nunc eget gravida velit, quis aliquam tortor. Etiam fringilla, odio vitae elementum interdum, magna nulla malesuada magna, vel pellentesque erat turpis et augue. Vivamus sollicitudin ut neque vitae tempus. Vestibulum et diam urna. Vestibulum vel pulvinar est, eget cursus mi. Suspendisse at elit sed purus commodo gravida. Quisque cursus convallis nibh, eu faucibus est porta vel. Nulla quis tempor tellus, sed euismod justo. Morbi cursus facilisis erat, vel tristique nisi venenatis id. Cras dolor metus, volutpat vel eros pretium, convallis consequat lectus. Morbi id eros dignissim, facilisis metus a, egestas lacus. Donec varius lorem diam, quis vestibulum diam scelerisque vitae. Fusce in aliquet odio. Cras elit leo, porttitor nec pulvinar sagittis, ultricies sit amet justo.")
flat.save!
flat = Flat.new(property_type: "Appartement, Paris 15ième" ,
                price: "650000",
                room_number: "3",
                square_meters: "80",
                pieces_number: "3",
                description: "C'est un bien moderne, lumineux avec vue sur parc. Avec tout le confort requis pour une famille. ",
                opinion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fermentum est non eros accumsan rhoncus. Suspendisse in tellus vitae elit placerat iaculis sed vitae augue. Nunc eget gravida velit, quis aliquam tortor. Etiam fringilla, odio vitae elementum interdum, magna nulla malesuada magna, vel pellentesque erat turpis et augue. Vivamus sollicitudin ut neque vitae tempus. Vestibulum et diam urna. Vestibulum vel pulvinar est, eget cursus mi. Suspendisse at elit sed purus commodo gravida. Quisque cursus convallis nibh, eu faucibus est porta vel. Nulla quis tempor tellus, sed euismod justo. Morbi cursus facilisis erat, vel tristique nisi venenatis id. Cras dolor metus, volutpat vel eros pretium, convallis consequat lectus. Morbi id eros dignissim, facilisis metus a, egestas lacus. Donec varius lorem diam, quis vestibulum diam scelerisque vitae. Fusce in aliquet odio. Cras elit leo, porttitor nec pulvinar sagittis, ultricies sit amet justo.")
flat.save!
flat = Flat.new(property_type: "Appartement, Paris 15ième" ,
                price: "650000",
                room_number: "3",
                square_meters: "80",
                pieces_number: "3",
                description: "C'est un bien moderne, lumineux avec vue sur parc. Avec tout le confort requis pour une famille. ",
                opinion: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut fermentum est non eros accumsan rhoncus. Suspendisse in tellus vitae elit placerat iaculis sed vitae augue. Nunc eget gravida velit, quis aliquam tortor. Etiam fringilla, odio vitae elementum interdum, magna nulla malesuada magna, vel pellentesque erat turpis et augue. Vivamus sollicitudin ut neque vitae tempus. Vestibulum et diam urna. Vestibulum vel pulvinar est, eget cursus mi. Suspendisse at elit sed purus commodo gravida. Quisque cursus convallis nibh, eu faucibus est porta vel. Nulla quis tempor tellus, sed euismod justo. Morbi cursus facilisis erat, vel tristique nisi venenatis id. Cras dolor metus, volutpat vel eros pretium, convallis consequat lectus. Morbi id eros dignissim, facilisis metus a, egestas lacus. Donec varius lorem diam, quis vestibulum diam scelerisque vitae. Fusce in aliquet odio. Cras elit leo, porttitor nec pulvinar sagittis, ultricies sit amet justo.")
flat.save!

user = User.new(email: 'adrienpelegri@yahoo.fr',
                password: 'zorglub11',
                admin: true,
                name: 'adrien'

  )
