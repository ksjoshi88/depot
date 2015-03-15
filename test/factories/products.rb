FactoryGirl.define do

  factory :product do
    title "Nokia Lumia 530"
    description "This is the latest mobile phone for windows phone 8.1"
    image_url "lumia.jpg"
    price 90.00
  end

["Samsung tab 3", "Apple iPhone 6", "LG Motospace 4"].each do |s|
    factory "handset_#{s}".to_sym, class: Product do
    title s
    description "This is the latest mobile phone for windows phone 8.1"
    image_url "lumia.jpg"
    price 90.00
    end
  end

end