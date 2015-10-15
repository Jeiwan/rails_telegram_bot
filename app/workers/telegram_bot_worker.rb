require 'telegram/bot'

class TelegramBotWorker
  include Sidekiq::Worker

  TOKEN = ENV['TELEGRAM_BOT_TOKEN']
  CHANNEL = ENV['TELEGRAM_BOT_CHANNEL']

  def perform_async(message)
    puts TOKEN
    puts CHANNEL

    Telegram::Bot::Client.run(TOKEN) do |bot|
      bot.api.send_message(chat_id: CHANNEL, text: message)
    end
  end
end
