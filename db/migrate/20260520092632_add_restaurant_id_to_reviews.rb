class AddRestaurantIdToReviews < ActiveRecord::Migration[8.1]
  def change
    add_reference :reviews, :restaurant, foreign_key: true
  end
end
