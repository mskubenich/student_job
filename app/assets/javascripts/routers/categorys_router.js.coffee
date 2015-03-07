class StudentJob.Routers.Categorys extends Backbone.Router

  routes:
    'categorys': 'index'
    'categorys/new': 'new'
    'categorys/:id': 'show'

  index: ->
    @categorys = new StudentJob.Collections.Categorys()

    @categorysIndexView = new StudentJob.Views.CategorysIndex
      categorys: @categorys

    @categorysIndexView.render()

  show: (id) ->
    @category = new StudentJob.Models.Category(id)

    @categorysIndexView = new StudentJob.Views.CategorysShow
      category: @category

    @categorysShowView.render()

  new: ->
    @categorysNewView = new StudentJob.Views.CategorysNew()
    @categorysNewView.render()
