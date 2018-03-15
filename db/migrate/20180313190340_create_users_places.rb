class CreateUsersPlaces < ActiveRecord::Migration
  def change
    create_table :users_places, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :place, index: true
    end
    add_index :users_places, :user_id
    add_index :users_places, :place_id
  end
end
