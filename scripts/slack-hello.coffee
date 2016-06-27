module.exports = (robot) ->
  robot.hear /Hello/i, (msg) ->
    username = msg.message.user.name
    msg.send "Hello, " + username