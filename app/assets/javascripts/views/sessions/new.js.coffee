class StudentJob.Views.SessionsNew extends Backbone.View

  template: HandlebarsTemplates['sessions/new']

  initialize: ->
    this.model = new StudentJob.Models.Sessions()

  el: ->
    $('#container')

  events: {
    'click #login-form input[type="submit"]': 'onFormSubmit'
  }

  render: ->
    $(@$el).html @template()

  onFormSubmit: (e) ->
    e.preventDefault()
    model = this.model

    this.$el.find('input[name]').each ->
      model.set(this.name, this.value)

    this.model.save( null, {
      success: ->
        $('#flash .alert-success').html('Signed in successfully !').removeClass('hide')
      error: (model, response) ->
        $('#flash .alert-danger').html(response.responseJSON.error).removeClass('hide')
    })