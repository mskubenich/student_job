class StudentJob.Routers.Application extends Backbone.Router
  before: ->
    $('#wrap').css('background-image', 'url(' + $('#wrap').data('background') + ')')