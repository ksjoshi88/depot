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

  def newOne
    puts "This is the time to disco"
  end

  def kaustubhFunction
    puts "My function"
  end

end