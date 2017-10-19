class AddReferenceToReviews < ActiveRecord::Migration[5.0]
  def change
    add_reference :reviews, :restaurant, index: true, null: false
  end
end
