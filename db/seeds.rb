# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

andres = User.create({ name: "Andres Rovira", email: "andres.rovira@gmail.com" })
nelly = User.create({ name: "Nelly Raxon", email: "nellyraxon@gmail.com" })
(1..5).each do |n|
  Message.create({ from: andres, to: nelly, subject: "Hola hermosa #{n}", body: "Eres linda" })
  Message.create({ from: nelly, to: andres, subject: "Hola papasito #{n}", body: "Eres mi amor" })
  Notification.create({ title: "Notification #{n}", color: 'yellow', user: andres })
  Task.create({ title: "Hacer diseño #{n}", progress: 20+n, user: andres })
end
