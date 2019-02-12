class AddToReview < ActiveRecord::Migration[5.2]
  def change
    add_reference :reviews, :perfume, index: true
  end
end
