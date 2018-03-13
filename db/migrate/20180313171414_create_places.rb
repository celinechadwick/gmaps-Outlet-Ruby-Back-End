class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :title
            t.string :business
            t.text :description
            t.string :lat
            t.string :lng
            t.integer :upvote
            t.integer :downvote
      t.timestamps null: false
    end
  end
end
