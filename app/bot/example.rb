include Facebook::Messenger

Bot.on :message do |message|
  handler = MessageHandler.new(message)

  user = handler.create_user

  resp = handler.create_response

  print message.sender
  print resp[:content]

  Bot.deliver(
    recipient: message.sender,
    message: {
      text: "What's up?"
    }
  )
end
