class StudentJob.Routers.AdminUsers extends Backbone.Router

  routes:
    'admin/users': 'index'

  index: ->
    @users = new StudentJob.Collections.AdminUsers()
    @page = new StudentJob.Views.AdminUsersIndex({users: @users})
    @page.render()