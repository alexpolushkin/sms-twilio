class Subscriber < ActiveRecord::Base

  # Notify our appointment attendee X minutes before the appointment time
  def send_message(msg, image_url)
    @twilio_number = ENV['+19179096072']
    @client = Twilio::REST::Client.new ENV['AP54b74acaed74a72428dc8631011d24d1'], ENV['871173ec60de644f4d8ae6f854b8a2fa']
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => msg,
      :media_url => image_url
    )
    puts message.to
  end

end
