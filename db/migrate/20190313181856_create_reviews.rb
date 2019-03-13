class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :content
      t.integer :rating
      t.belongs_to :restaurant, index: true
            
      t.timestamp
    end
  end
end
