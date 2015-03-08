#= require jquery
#= require jquery_ujs
#= require jquery-cookie
#= require bootstrap
#= require underscore
#= require backbone
#= require student_job
#= require handlebars.runtime
#= require_tree ../templates
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./routers
#= require_tree .

@showAlert = (type, text) ->
  alert = $('<div class="alert alert-' + type + '">' + text + '</div>')
  alert.html(text)
  $('#flash').append(alert)
  alert.fadeTo(2000, 500).slideUp 500, ->
    alert.alert 'close'

@updateHeader = () ->
  if $.cookie('session_token')
    $('#session-header').html(HandlebarsTemplates['sessions/header']({user_email: $.cookie('user_email'), profile_link: 'www.google.com', signout_path: 'dfdf'}))
  else
    $('#session-header').html(HandlebarsTemplates['sessions/header']({user_email: null, signin_path: 'dfdf'}))

$ ->
  updateHeader()