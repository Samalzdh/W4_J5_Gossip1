require 'bundler'
Bundler.require

require_relative './lib/app/controller.rb'
require_relative './lib/app/gossip.rb'
require_relative './lib/app/view.rb'
require_relative './lib/app/router.rb'


Router.new.perform
