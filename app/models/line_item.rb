class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def myFunction
    puts "This is my friend Romil"
  end
end


