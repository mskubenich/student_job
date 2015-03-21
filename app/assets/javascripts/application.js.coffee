#= require jquery
#= require jquery_ujs
#= require jquery-cookie
#= require bootstrap
#= require underscore
#= require backbone
#= require backbone-router-callbacks
#= require student_job
#= require handlebars.runtime
#= require ckeditor-jquery
#= require twbs-pagination
#= require_tree ../templates
#= require_tree ./models
#= require_tree ./collections
#= require_tree ./views
#= require_tree ./routers
#= require_tree .

@showAlert = (type, text) ->
  $('.sj-alert').remove()
  alert = $('<div class="sj-alert sj-alert-' + type + '">' + text + '</div>')
  alert.html(text)
  $('body').append(alert)
  alert.fadeTo(6000, 500).slideUp 500, ->
    alert.remove()

@updateHeader = () ->
  if $.cookie('session_token')
    $('#session-header').html(HandlebarsTemplates['sessions/header']({user_email: $.cookie('user_email'), profile_link: 'www.google.com', signout_path: 'dfdf'}))
  else
    $('#session-header').html(HandlebarsTemplates['sessions/header']({user_email: null, signin_path: 'dfdf'}))

  $('#roadmap-header').html(HandlebarsTemplates['admin/header']({admin_route: window.location.href.indexOf('admin') > -1}))

$ ->
  updateHeader()

$(window).bind 'hashchange', () ->
  updateHeader()