class AddRestaurantIdToReview < ActiveRecord::Migration[5.1]
  def change
    add_column :reviews, :restaurant_id, :integer
  end
end
