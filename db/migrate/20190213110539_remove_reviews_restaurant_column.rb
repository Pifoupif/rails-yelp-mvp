class RemoveReviewsRestaurantColumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :restaurant
  end
end
