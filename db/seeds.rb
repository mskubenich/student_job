Proposal.create title: 'Робота в Львові (3000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Proposal.create title: 'Робота в Києві (4000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Proposal.create title: 'Ruby developer Uzhorod (3000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '


Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом2.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом3.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом4.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом5.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '


u = User.create email: 'admin@gmail.com', password: 'qwerty', password_confirmation: 'qwerty'
u.save


puts 'Create roles ...'

Role.destroy_all
admin_role = Role.create name: 'admin'
recruiter_role = Role.create name: 'recruiter'
seeker_role = Role.create name: 'seeker'