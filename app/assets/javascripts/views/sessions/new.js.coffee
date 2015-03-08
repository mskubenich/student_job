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
    router = this.router

    this.$el.find('input[name]').each ->
      model.set(this.name, this.value)

    this.model.save( null, {
      success: ->
        showAlert 'success', 'Signed in successfully !'
        $('#session-header').html(HandlebarsTemplates['sessions/header']({user_email: 'vasya', profile_link: 'www.google.com', signout_path: 'dfdf'}))
        router.navigate("/", true)
      error: (model, response) ->
        showAlert 'danger', response.responseJSON.error
        $('#session-header').html(HandlebarsTemplates['sessions/header']({signin_path: 'dfdf'}))
    })