App.chat = App.cable.subscriptions.create "ChatChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    # Called when there's incoming data on the websocket for this channel

  comment: ->
    @perform 'comment'

  $ ->
    $('#submit').on 'click', (e) ->
      App.chat.comment()
      e.preventDefault()

