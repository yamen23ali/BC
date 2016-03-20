# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

=begin
Account.create(id: 1, name: 'customer')
Account.create(id: 2, name: 'admin')

Status.create(id: 1, name: 'active')

Category.create(id: 1, name: 'cat1')

SubCategory.create(id: 1, name: 'subcat1', category_id: 1 )

# Passsword is ( test1234 )
User.create(
	id: 1, account_id: 2, first_name: 'yamen', last_name: 'ali', 
    created_at: "2015-10-18 09:58:24", updated_at: "2015-10-18 09:58:43", 
    email: "yamen23ali@gmail.com", 
    encrypted_password: "$2a$10$t4ChCjZBjYSk63NgT3zB2OgQXOifN/tGeOMZhZWWz8aexGKQs1Tve", 
    sign_in_count: 1, password: "test1234",
    current_sign_in_at: "2015-10-18 09:58:43", last_sign_in_at: "2015-10-18 09:58:43", 
    confirmed_at: "2015-10-18 09:58:31", confirmation_sent_at: "2015-10-18 09:58:24", 
)

Category.create(id: 1, name: 'Science fiction', active: true)
Category.create(id: 2, name: 'Satire', active: true)
Category.create(id: 3, name: 'Self help', active: true)
Category.create(id: 4, name: 'Action and Adventure', active: true)
Category.create(id: 5, name: 'Religion & Spirituality', active: true)
Category.create(id: 6, name: 'Romance', active: true)
Category.create(id: 7, name: 'Mystery', active: true)
Category.create(id: 8, name: 'Horror', active: true)
Category.create(id: 9, name: 'Drama', active: true)
Category.create(id: 10, name: 'Health', active: true)
Category.create(id: 11, name: 'Travel', active: true)
Category.create(id: 12, name: 'Children', active: true)
Category.create(id: 13, name: 'Science', active: true)
Category.create(id: 14, name: 'History', active: true)
Category.create(id: 15, name: 'Comics', active: true)
Category.create(id: 16, name: 'Anthology', active: true)
Category.create(id: 17, name: 'Poetry', active: true)
Category.create(id: 18, name: 'Dictionaries', active: true)
Category.create(id: 19, name: 'Cookbooks', active: true)
Category.create(id: 20, name: 'Diaries', active: true)
Category.create(id: 21, name: 'Fantasy', active: true)
Category.create(id:22, name: 'Biographies', active: true)
Category.create(id: 23, name: 'Art', active: true)



Descriptor.create(id: 1, name: 'Title', active: true)
Descriptor.create(id: 2, name: 'Author', active: true)
Descriptor.create(id: 3, name: 'Edition', active: true)
Descriptor.create(id: 4, name: 'Language', active: true)

=end

User.create(
    id: 2, account_id: 1, first_name: 'safaa', last_name: 'ali',
    created_at: "2015-10-18 09:58:24", updated_at: "2015-10-18 09:58:43",
    email: "yamen21ali@gmail.com",
    encrypted_password: "$2a$10$t4ChCjZBjYSk63NgT3zB2OgQXOifN/tGeOMZhZWWz8aexGKQs1Tve",
    sign_in_count: 1, password: "test1234",
    current_sign_in_at: "2015-10-18 09:58:43", last_sign_in_at: "2015-10-18 09:58:43",
    confirmed_at: "2015-10-18 09:58:31", confirmation_sent_at: "2015-10-18 09:58:24",
)