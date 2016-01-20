# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
	# $('#start-btn').click ->
	#   console.log 'Start button clicked.'
	#   return

	$('#start-btn').click ->
	  $(this).toggleClass 'down'
	  return