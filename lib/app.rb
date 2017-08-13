require 'twilio-ruby'

class Message
  attr_reader :price, :account_sid, :auth_token

  def initialize(price)
    @price = price
    @account_sid = "AC4588793b054267a992b7ddd807c78dc8" # Your Account SID from www.twilio.com/console
    @auth_token = "dae91b2669e9d00e08d8c839ba27ffef"   # Your Auth Token from www.twilio.com/console
  end

  def send_sms
      @client = Twilio::REST::Client.new account_sid, auth_token
      message = @client.messages.create(
        body: "Thank you! Your order totalling £#{price} was placed and will be delivered before 18:52",
        to: "+447856274685",    # Replace with your phone number
        from: "+441315104037")  # Replace with your Twilio number
  end

end
