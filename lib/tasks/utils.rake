namespace :utils do
  desc "Cria administradores fake"
  task generate_admin: :environment do
    10.times do
      Admin.create!(name: Faker::Name.name,
                    email: Faker::Internet.email,
                    password: '123456',
                    password_confirmation: '123456',
                    role: [0, 1].sample)
    end
  end

end
