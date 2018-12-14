class Dashing.Mem extends Dashing.Widget

  @accessor 'value', Dashing.AnimatedValue

  constructor: ->
    super
    @observe 'value', (value) ->
      $(@node).find(".mem").val(value).trigger('change')

  ready: ->
    mem = $(@node).find(".mem")
    mem.attr("data-bgcolor", mem.css("background-color"))
    mem.attr("data-fgcolor", mem.css("color"))
    mem.knob()
