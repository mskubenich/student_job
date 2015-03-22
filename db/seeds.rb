puts 'Create roles ...'
Role.destroy_all

admin_role = Role.create name: 'admin'
recruiter_role = Role.create name: 'recruiter'
student_role = Role.create name: 'student'

puts 'Create users...'
User.destroy_all

admin = User.create email: 'admin@sj.com', password: 'qwerty', password_confirmation: 'qwerty'
admin.roles << admin_role
admin.save

student = User.create email: 'student@sj.com', password: 'qwerty', password_confirmation: 'qwerty'
student.roles << student_role
student.save

recruiter = User.create email: 'recruiter@sj.com', password: 'qwerty', password_confirmation: 'qwerty'
recruiter.roles << recruiter_role
recruiter.save

puts 'Create Proposals...'
Proposal.create title: 'Робота в Львові (3000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Proposal.create title: 'Робота в Києві (4000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Proposal.create title: 'Ruby developer Uzhorod (3000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '

puts 'Create Articles...'
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом2.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом3.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом4.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом5.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
#
# puts 'Create Vacantions...'
# Vacantion.create title: 'Title Vacantion 1', description: 'Test descriprion 1 '
# Vacantion.create title: 'Title Vacantion 2', description: 'Test descriprion 2 '
# Vacantion.create title: 'Title Vacantion 3', description: 'Test descriprion 3 '

