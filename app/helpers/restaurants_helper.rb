module RestaurantsHelper
  def average_review(restaurant)
    avg = 0
    restaurant.reviews.each do |review|
      avg += review.rating
    end
    if restaurant.reviews.size != 0
      avg = avg / restaurant.reviews.size
    end
    return avg
  end
end
