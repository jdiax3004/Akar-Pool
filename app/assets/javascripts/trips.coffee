# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
nextTab = (elem) ->
  $(elem).next().find('a[data-toggle="tab"]').click()
  return

prevTab = (elem) ->
  $(elem).prev().find('a[data-toggle="tab"]').click()
  return

$(document).ready ->
  #Wizard
  $('a[data-toggle="tab"]').on 'show.bs.tab', (e) ->
    $target = $(e.target)
    if $target.parent().hasClass('disabled')
      return false
    return
  $('.next-step').click (e) ->
    $active = $('.wizard .nav-tabs li.active')
    $active.next().removeClass 'disabled'
    nextTab $active
    return
  $('.prev-step').click (e) ->
    $active = $('.wizard .nav-tabs li.active')
    prevTab $active
    return
  return
