class RemoveRatingInteger < ActiveRecord::Migration[7.1]
  def change
    remove_column :movies, :rating
  end
end
