class StudentJob.Routers.Users extends Backbone.Router

  routes:
    'signup': 'new'
    'profile': 'profile'

  new: ->
    @page = new StudentJob.Views.UsersNew
    @page.model = new StudentJob.Models.User()
    @page.router = this
    @page.render()

  profile: () ->
    @user = new StudentJob.Models.User()

    @usersShowView = new StudentJob.Views.UsersShow
      user: @user

    @usersShowView.render()
