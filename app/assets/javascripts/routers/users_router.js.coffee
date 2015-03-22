class StudentJob.Routers.Users extends StudentJob.Routers.Application

  routes:
    'signup': 'new'
    'profile': 'profile'
    'edit': 'edit_profile'

  new: ->
    @page = new StudentJob.Views.UsersNew
    @page.render()

  profile: () ->
    @user = new StudentJob.Models.User()

    @usersShowView = new StudentJob.Views.UsersShow
      user: @user

    @usersShowView.render()

  edit_profile: () ->
    @user = new StudentJob.Models.User()

    @usersShowView = new StudentJob.Views.UsersEdit
      user: @user

    @usersShowView.render()

