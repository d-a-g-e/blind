# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
root = exports ? this
root.Blind = ( ->

  init = (page) ->
    if page == 'index'
      console.log "blind desde el index"
      init_hover(9)
    true

  init_hover = ->
    run(1200,10)

  run = (interval, frames)->
    int = 1
    func= ()-> 
      document.body.id = "b"+int;
      int++;
      if(int == frames)
        int = 1
    swap = window.setInterval(func, interval);
  {init: init}
)()