# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

	# Generate a number between 1 and 3.
	randTime = Math.floor((Math.random() * 3) + 1)
	console.log(randTime)

	$('#start-btn').click ->
	  $(this).toggleClass 'down'
	  return

	# Create audio element.
	audioElement = document.createElement('audio')
	audioElement.setAttribute 'src', 'http://www.uscis.gov/files/nativedocuments/Track%2093.mp3'
	# audioElement.setAttribute 'autoplay', 'autoplay'
	#audioElement.load()
	$.get()
	audioElement.addEventListener 'load', (->
	  audioElement.play()
	  return
	), true
	$('#start-btn').click ->
	  audioElement.play()
	  return
	$('.down').click ->
	  audioElement.pause()
	  return