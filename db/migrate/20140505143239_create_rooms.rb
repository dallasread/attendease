class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
