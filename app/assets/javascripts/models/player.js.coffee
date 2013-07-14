class Player
  @typeahead: (query, process) ->
    $.get '/players/typeahead.json', {query: query}, 
      (res) ->
        console.log(res)
        process(res)

$(document).ready ->
  $('.player-typeahead').typeahead(source: Player.typeahead)

window.Player = Player

