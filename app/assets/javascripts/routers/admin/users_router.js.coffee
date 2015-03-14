class StudentJob.Routers.AdminUsers extends StudentJob.Routers.Admin

  routes:
    'admin/users': 'index'

  index: ->
    @users = new StudentJob.Collections.AdminUsers()
    @page = new StudentJob.Views.AdminUsersIndex({users: @users})
    @page.render()