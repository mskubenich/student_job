class StudentJob.Collections.AdminUsers extends Backbone.Collection

  model: StudentJob.Models.AdminUser

  url: ->
    '/admin/users.json?'