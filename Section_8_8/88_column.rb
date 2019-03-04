require 'singleton'

#シングルトンパターンの練習

class Configuration
  include Singleton

  attr_accessor :base_url, :debug_mode

  def initialize
    #設定値を初期化する
    @base_url = ''
    @debug_mode = false
  end
end

#condig = Configuration.new
#=> private method `new' called for Configuration:Class (NoMethodError)

config = Configuration.instance

config.base_url = 'http://example.com'
config.debug_mode = true

other = Configuration.instance

puts other.base_url
puts other.debug_mode

puts config.object_id
puts other.object_id
