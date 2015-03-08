class StudentJob.Routers.Users extends Backbone.Router

  routes:
    'signup': 'new'
    'profile': 'profile'

  new: ->
    @page = new StudentJob.Views.UsersNew
    @page.render()

  profile: () ->
    @user = new StudentJob.Models.User()

    @usersShowView = new StudentJob.Views.UsersShow
      user: @user

    @usersShowView.render()
