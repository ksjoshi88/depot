FactoryGirl.define do
  factory :line_item do
    #association :product, factory: "product".to_sym
    product
    cart
  end

  # ["Samsung tab 3", "Apple iPhone 6", "LG Motospace 4"].each do |p|
  #   factory "line_item_#{p}".to_sym, class: LineItem do

  #     association :product, factory: "handset_#{p}".to_sym
  #     cart
  #   end
  # end

end
