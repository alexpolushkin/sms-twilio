class Subscriber < ActiveRecord::Base

  def send_message(msg, image_url)
    @twilio_number = ENV['+19179096072']
    @client = Twilio::REST::Client.new Rails.application.secrets.twilio_account_sid,
                                       Rails.application.secrets.twilio_auth_token
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => msg,
      :media_url => image_url
    )
    puts message.to
  end

end