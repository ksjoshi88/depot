class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def myfunction (number)
    puts "The number is #{number}"
  end

  def fun
    puts 2+3*4
  end

  def fun1
    puts "hello"
  end

  def newFun
    puts "Faltugiri"
  end

  def latestFunction
    puts "This is my functions"
  end

  def commonTimeoass
    puts "kutra"
  end
end

