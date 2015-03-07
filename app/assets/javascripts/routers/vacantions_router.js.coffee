class StudentJob.Routers.Vacantions extends Backbone.Router

  routes:
    'vacantions': 'index'
    'vacantions/new': 'new'
    'vacantions/:id': 'show'

  index: ->
    @vacantions = new StudentJob.Collections.Vacantions()

    @vacantionsIndexView = new StudentJob.Views.VacantionsIndex
      vacantions: @vacantions

    @vacantionsIndexView.render()

  show: (id) ->
    @vacantions = new StudentJob.Models.Vacantion(id)

    @vacantionsShowView = new StudentJob.Views.VacantionsShow
      vacantion: @vacantion

    @vacantionsShowView.render()

  new: ->
    @vacantionsNewView = new StudentJob.Views.VacantionsNew()
    @vacantionsNewView.render()
