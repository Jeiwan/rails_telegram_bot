class Message < ActiveRecord::Base
  after_create :send_telegram_message

  private

  def send_telegram_message
    TelegramBotWorker.perform_async(text)
  end
end
