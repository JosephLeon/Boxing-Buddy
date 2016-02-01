# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->

	# Generate a number between 1 and 3.
	randTime = Math.floor((Math.random() * 3) + 1)
	# console.log(randTime)

	$('#start-btn').click ->
	  $(this).toggleClass 'down'
	  return

	# Add beep from http://www.soundjay.com/beep-sounds-1.html
	# TODO - Add shout out in readme

	audioElement = document.createElement('audio')
	audioElement.setAttribute 'src', 'assets/beep-07.mp3'
	audioElement.load()
	$.get()

	oneMinuteRound = ->
		console.log('One minute bell was sounded!')
		audioElement.play()
		setTimeout(threeMinuteRound, 60000)

	threeMinuteRound = ->
		console.log('Three minute bell sounded!')
		audioElement.play()
		setTimeout(oneMinuteRound, 180000)

	$('#start-btn').click ->
	  oneMinuteRound()
	  return

	$('.down').click ->
	  throw new Error('Something went badly wrong!')
