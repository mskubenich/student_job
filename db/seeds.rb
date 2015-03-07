Proposal.create title: 'Робота в Львові (3000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Proposal.create title: 'Робота в Києві (4000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Proposal.create title: 'Ruby developer Uzhorod (3000$)', description: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '


Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом2.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом3.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом4.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '
Article.create title: 'Студенти УжНУ почали користуватися нашим сайтом5.', body: 'Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum Lorem ipsum '

Category.create title: 'Сільське госодарство', description: 'test 1', parentId: 0

Vacantion.create title: 'Title Vacantion 1', description: 'Test descriprion 1 '
Vacantion.create title: 'Title Vacantion 2', description: 'Test descriprion 2 '
Vacantion.create title: 'Title Vacantion 3', description: 'Test descriprion 3 '


u = User.create email: 'admin@gmail.com', password: 'qwerty', password_confirmation: 'qwerty'
u.save