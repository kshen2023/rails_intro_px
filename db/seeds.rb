require 'csv'
require 'faker'

# Helper method to load CSV data
def load_csv_data(file_path)
  data = []
  CSV.foreach(file_path, headers: true) do |row|
    data << row.to_hash
  end
  data
end

# Seed schools from CSV
schools_data = load_csv_data(Rails.root.join('db', 'seeds', 'schools.csv'))
School.create!(schools_data)

puts "Schools seeded successfully."

# Seed sections from CSV
sections_data = load_csv_data(Rails.root.join('db', 'seeds', 'sections.csv'))
Section.create!(sections_data)

puts "Sections seeded successfully."

# Seed students from CSV
students_data = load_csv_data(Rails.root.join('db', 'seeds', 'students.csv'))
Student.create!(students_data)

puts "Students seeded successfully."

# Seed teachers using Faker
teachers_data = []
100.times do
  teacher_name = Faker::Name.name
  teacher_email = Faker::Internet.email
  teacher_phone = Faker::PhoneNumber.phone_number_with_country_code

  teachers_data << {
    teacher_name: teacher_name,
    teacher_email: teacher_email,
    teacher_phone: teacher_phone
  }
end
Teacher.create!(teachers_data)

puts "Teachers seeded successfully."

# Seed subjects using Faker
subjects_data = []
50.times do
  subject_name = Faker::Educator.subject
  subject_description = Faker::Lorem.paragraph(sentence_count: 3)
  subject_code = Faker::Lorem.characters(number: 6).upcase

  subjects_data << {
    subject_name: subject_name,
    subject_description: subject_description,
    subject_code: subject_code
  }
end
Subject.create!(subjects_data)

puts "Subjects seeded successfully."
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?