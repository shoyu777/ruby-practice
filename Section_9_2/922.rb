puts 'Start.'
module Greeter
  def hello
    'hello'
  end
end

begin
  greeter = Greeter.new
rescue
  puts 'Continue, though error occur'
end

puts 'End.'
