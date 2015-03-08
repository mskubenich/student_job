class StudentJob.Routers.Users extends Backbone.Router

  routes:
    'signup': 'new'
    'users/:id': 'show'

  new: ->
    @page = new StudentJob.Views.UsersNew
    @page.render()

  show: (id) ->
    @user = new StudentJob.Models.User(id)

    @usersShowView = new StudentJob.Views.UsersShow
      user: @user

    @usersShowView.render()
