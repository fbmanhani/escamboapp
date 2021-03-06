# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


categories = ["Animais e acessórios", "Esportes", "Para a sua casa", "Eletrônicos e celulares", "Músicas e hobbies",
              "Bebês e crianças", "Moda e beleza", "Veículos e barcos", "Imóveis", "Empregos e negócios"]

puts "Cadastrando categorias..."
categories.each do |item|
  Category.find_or_create_by!(description: item)
end
puts "Cadastrando categorias...OK"

puts "Cadastrando a administrador padrão..."

Admin.create!(name: "Felipe B. Manhani", email: "fbmanhani@gmail.com", password: "123456", password_confirmation: "123456", role: 0)

puts "Cadastrando a administrador padrão...OK"