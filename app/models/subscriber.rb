class Subscriber < ActiveRecord::Base

  def send_message(msg, image_url)
    @twilio_number = ENV['+19179096072']
    @client = Twilio::REST::Client.new 
    ENV['AC127af8098ad486a9dab8f83014b5c74b'],
    ENV['871173ec60de644f4d8ae6f854b8a2fa']
    message = @client.account.messages.create(
      :from => @twilio_number,
      :to => self.phone_number,
      :body => msg,
      :media_url => image_url
    )
    puts message.to
  end

end