class LineItem < ActiveRecord::Base
  belongs_to :product
  belongs_to :cart

  def myfunction (number)
    puts "The number is #{number}"
  end
end

