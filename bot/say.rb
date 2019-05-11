class Say < SlackRubyBot::Commands::Base

  ASK_WHO_SUP_MESSAGE = {
    text: 'I just wanted to check in, how did it go?',
    attachments: [
      {
        text: 'Choose wisely',
        attachment_type: 'default',
        actions: [
          {
            name: 'outcome',
            text: 'Torreja',
            type: 'button',
            value: 'all',
            style: 'primary'
          },
          {
            name: 'outcome',
            text: 'Pollo',
            type: 'button',
            value: 'some'
          },
          {
            name: 'outcome',
            text: "Salchicha",
            type: 'button',
            value: 'none',
            style: 'danger'
          }
        ]
      }
    ]
  }.freeze

  command 'hi' do |client, data, match|
    message = ASK_WHO_SUP_MESSAGE.dup
    message[:channel] = data.channel
    message[:as_user] = true
    message[:text] = ''
    client.web_client.chat_postMessage(message)
  end

  command 'que deseas?' do |client, data, match|
    message = {}
    message[:channel] = data.channel
    message[:as_user] = true
    message[:text] = 'proveer comida es mi pasion'
    client.web_client.chat_postMessage(message)
  end

  command 'ping' do |client, data, match|
    client.say(text: 'pong', channel: data.channel)
  end

end