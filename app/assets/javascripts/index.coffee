$(document).ready ->

	# Generate a number between 1 and 3
	# Will be used for random round timer series
	randTime = Math.floor((Math.random() * 3) + 1)

	# Sounds
	# TODO - Add shout out in readme
	audioWarningElement = document.createElement('audio')
	audioWarningElement.setAttribute 'src', 'assets/beep-06.mp3'
	audioWarningElement.load()

	audioElement = document.createElement('audio')
	audioElement.setAttribute 'src', 'assets/beep-07.mp3'
	audioElement.load()

	warningBell = ->
		console.log('warningBell function called')
		audioWarningElement.play()

	timer = (time) ->
		console.log('timer function called.')
		# console.log(time)
		audioElement.play()

		# Throw the warning bell 10 seconds before end of round.
		warningBellTime = time - 10000
		# console.log(warningBellTime)
		setTimeout(warningBell, warningBellTime)

		# setTimeout(FUNCTION, time)

	oneMinuteRound = ->
		console.log('One minute bell was sounded!')
		audioElement.play()
		oneMinuteTimer = setTimeout(threeMinuteRound, 60000)
		# For testing.
		# oneMinuteTimer = setTimeout(threeMinuteRound, 3000)

	threeMinuteRound = ->
		console.log('Three minute bell sounded!')
		audioElement.play()
		threeMinuteTimer = setTimeout(oneMinuteRound, 180000)
		# For testing.
		# threeMinuteTimer = setTimeout(oneMinuteRound, 6000)



	# Start timer click function
	$('#start-btn').click ->
	  $(this).toggleClass 'start stop'

	  timer(15000) if $(this).hasClass("stop")

	  console.log('down was clicked') if $(this).hasClass("down")

	  return

	  # timer(15000) if $(this).hasClass("start")

	  # clearTimeout(oneMinuteTimer) if $(this).hasClass("down")
	  # console.log('down was clicked') if $(this).hasClass("down")


	# $('.down').click ->
	#   $(this).toggleClass 'start'
	#   return

  
  # 	# clearTimeout(oneMinuteTimer)
  # 	# clearTimeout(threeMinuteTimer)
  #   # throw new Error('Something went badly wrong!')
# $('.start').click ->
#   console.log('class click working')
#   # $('.start').addClass 'down'
#   # $('.down').removeClass 'start'
#   timer(15000)
#   return


# $('.down').click ->
#   console.log 'class down pressed'
#   # $('.down').addClass 'start'
#   # $('.start').removeClass 'down'