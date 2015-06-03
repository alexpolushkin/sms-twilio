class Subscriber < ActiveRecord::Base

  # Notify our appointment attendee X minutes before the appointment time
  def send_message(msg, image_url)
    @twilio_number = ENV['+19179096072']
    @client = Twilio::REST::Client.new ENV['ACe800b13edf56363d402050704c9b5bc9'], ENV['3fbc67894f299d3c40b0cb7311a5fd47']
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => msg,
      :media_url => image_url
    )
    puts message.to
  end

end