module NameChanger
  def change_name
    self.name = 'アリス'
  end
end

class User
  include NameChanger

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('alice')
p user.name

p user.change_name
p user.name
