class Player
  @typeahead: (query, process) ->
    $.get '/players/typeahead.json', {query: query}, 
      (res) ->
        process(res)

$(document).ready ->
  $('.player-typeahead').typeahead(source: Player.typeahead)

window.Player = Player

