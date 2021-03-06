require 'clockwork'
require './config/boot'
require './config/environment'
include Clockwork
Clockwork.configure do |config|
  logger = Logger.new("#{Rails.root}/log/scheduler.log")
  config[:logger] = logger
  Trade::TransactionKeeper.logger = logger
end

every(30.minutes, 'reconfirm.transaction') do
  Trade::TransactionKeeper.reconfirm_transactions(30.minutes)
end

every(1.day, 'clean_up_transactions', at: '05:00') do
  Trade::TransactionKeeper.clean_up_transactions(1.day)
end