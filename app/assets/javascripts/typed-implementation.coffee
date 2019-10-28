ready = ->
  Typed.new '.element',
    strings: [
      'Welcome to Meshcos Pantry Portfolio.'
      "I just want to show you my side of story."
    ]
    typeSpeed: 0
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
