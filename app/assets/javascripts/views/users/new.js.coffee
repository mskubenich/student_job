class StudentJob.Views.UsersNew extends Backbone.View

  template: HandlebarsTemplates['users/new']

  el: ->
    $('#container')

  render: ->
    $(@$el).html @template()

  events: {
    'click form input[type="submit"]': 'onFormSubmit'
  }

  onFormSubmit: (e) ->
    e.preventDefault()
    model = this.model
    router = this.router

    this.$el.find('input[name]').each ->
      model.set(this.name, this.value)

    this.model.save( null, {

      success: (model, response) ->
        console.log('Seccess')
        showAlert 'success', 'Signed in successfully !'
        updateHeader()
        router.navigate("/", true)
      error: (model, response) ->
        console.log('Error')
        showAlert 'danger', response.responseJSON.error
        updateHeader()
    })