$(document).ready ->

	# Generate a number between 1 and 3
	# Will be used for random round timer series
	randTime = (Math.floor((Math.random() * 3) + 1)) * 60000

	# Sounds
	# TODO - Add shout out in readme
	audioWarningElement = document.createElement('audio')
	audioWarningElement.setAttribute 'src', 'assets/beep-06.mp3'
	audioWarningElement.load()

	audioElement = document.createElement('audio')
	audioElement.setAttribute 'src', 'assets/beep-07.mp3'
	audioElement.load()

	warningBell = ->
		console.log('warningBell function called.')
		audioWarningElement.play()

	# FatalError = ->
	#   Error.apply this, arguments
	#   @name = 'FatalError'
	#   return

	# FatalError.prototype = Object.create(Error.prototype)

	timer = (time, type) ->
		randTime = (Math.floor((Math.random() * 3) + 1)) * 10000
		# Types: regular, random
		if type == 'regular'
			if time == 60000
			# if time == 15000
				console.log 'regular long round'
				audioElement.play()

				# Throw the warning bell 10 seconds before end of round.
				warningBellTime = 170000
				console.log warningBellTime
				warningBellTimeout = setTimeout(warningBell, warningBellTime)

				setTimeout(timer.bind(this, 180000, 'regular'), 180000)
				# setTimeout(timer.bind(this, 20000, 'regular'), 20000)
			else
				console.log 'regular short round'
				audioElement.play()

				# Throw the warning bell 10 seconds before end of round.
				warningBellTime = 50000
				console.log(warningBellTime)
				warningBellTimeout = setTimeout(warningBell, warningBellTime)

				setTimeout(timer.bind(this, 60000, 'regular'), 60000)
				# setTimeout(timer.bind(this, 15000, 'regular'), 15000)
		else
			audioElement.play()

			# Throw the warning bell 10 seconds before end of round.
			warningBellTime = time - 10000
			console.log(warningBellTime)
			warningBellTimeout = setTimeout(warningBell, warningBellTime)

			setTimeout(timer.bind(this, randTime, 'random'), randTime)


	# Start timer click function
	$('#start-btn').click ->
	  $(this).toggleClass 'start stop'

	  if $('#regular-btn').hasClass 'active'
	  	console.log '#regular-btn has class active'
	  	timer(60000, 'regular') if $(this).hasClass("stop")
	  

	  if $('#random-btn').hasClass 'active'
	  	console.log '#random-btn has class active'
	  	timer(randTime, 'random') if $(this).hasClass("stop")

	  # Stop the timer when stop is clicked
	  console.log('down was clicked') if $(this).hasClass("start")
	  # throw new FatalError('Something went badly wrong!') if $(this).hasClass("start")

	  return

	$('.rhythm-type-btn').click ->
		$('.rhythm-type-btn').removeClass('active')
		$(this).addClass('active')

	# $('#regular-btn').click ->


	# $('#random-btn').click ->

	# oneMinuteRound = ->
	# 	console.log('One minute bell was sounded!')
	# 	audioElement.play()
	# 	oneMinuteTimer = setTimeout(threeMinuteRound, 60000)
	# 	# For testing.
	# 	# oneMinuteTimer = setTimeout(threeMinuteRound, 3000)

	# threeMinuteRound = ->
	# 	console.log('Three minute bell sounded!')
	# 	audioElement.play()
	# 	threeMinuteTimer = setTimeout(oneMinuteRound, 180000)
	# 	# For testing.
	# 	# threeMinuteTimer = setTimeout(oneMinuteRound, 6000)
	  