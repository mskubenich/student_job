class StudentJob.Routers.Vacantions extends StudentJob.Routers.Application

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
    @vacantion = new StudentJob.Models.Vacantion(id)

    @vacantionsShowView = new StudentJob.Views.VacantionsShow
      vacantion: @vacantion

    @vacantionsShowView.render()

  new: ->
    @vacantionsNewView = new StudentJob.Views.VacantionsNew()
    @vacantionsNewView.render()
