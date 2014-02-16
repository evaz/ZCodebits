require "sinatra"
require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC2b5c36b6e2b9969be7596d7e8f2e0f7c'
auth_token = '6ab5b4dc96ff7bd3cfc97cdcade057b2'

get '/' do
  erb :twiliosms
end

post '/send' do
  @client = Twilio::REST::Client.new account_sid, auth_token
  @client.account.sms.messages.create(
    :from => '+13109826618',
    :to => '+13108455437',
    :body => params[:message]
  )
end

