class Dashing.Cpu5 extends Dashing.Widget

  @accessor 'value', Dashing.AnimatedValue

  constructor: ->
    super
    @observe 'value', (value) ->
      $(@node).find(".cpu5").val(value).trigger('change')

  ready: ->
    cpu5 = $(@node).find(".cpu5")
    cpu5.attr("data-bgcolor", cpu5.css("background-color"))
    cpu5.attr("data-fgcolor", cpu5.css("color"))
    cpu5.knob()
