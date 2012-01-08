require '../lib/shoes'

Shoes.app do
  image 'images/shoe.jpg'
  image 'images/shoe.jpg', { 'width' => 140, 'height' => 140 }
  image 'images/shoe.jpg', { 'width' =>  70, 'height' =>  70 }
end
