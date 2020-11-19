# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#how to create a user
#User.create(first_name:'Jane',last_name:'Doe')

#how to create a course
#course = Course.new(name:'Javascript 101')
#course.save saves to database

# Course.create('Ruby 101')

#how to create enrollment via enrollment class
#Enrollment.create(role: 'Student', user_id: 1, course_id: 1)
#user_id and course_id must exit for look up

#how to create enrollment via instance of user class
#u = User.create(first_name:'Jane',last_name:'Doe')
#u.enrollments.create(role: 'TA', course_id: 1)
#course_id must exist!

# #how to create enrollment via instance of course class
# u = User.new(first_name: 'John', last_name: 'Doe')
# course = Course.new(name: 'Rails 101')
# e = course.enrollments.create(role: 'TA', user_id:u.id)

#how to access enrollments
#u.enrollments #give all the enrollments for a given user
# course.enrollments #give all user for given course

#how to update enrollment via enrollment class
#how to update enrollment via instance of enrollment class
#how to get users enrollments for one user
#how to get course enrollments for one course
users = []
courses = []
roles = ['Student', 'TA', 'Teacher']

User.destroy_all

30.times do |i|
    users << User.create(first_name: Faker::JapaneseMedia::SwordArtOnline.game_name, last_name: Faker::Name.last_name)
end

3.times do |i|
    courses << Course.create(name: Faker::Educator.course_name)
end

courses.each do |course|
    10.times do 
        # Enrollment.create(role: roles.sample, user_id: users.sample.id, course_id: course.id)
        course.enrollments.create(role: roles.sample, user_id: users.sample.id)
    end
end

