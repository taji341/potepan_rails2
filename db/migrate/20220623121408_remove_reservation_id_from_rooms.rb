class RemoveReservationIdFromRooms < ActiveRecord::Migration[6.1]
  def change
    remove_column :rooms, :reservation_id, :integer
  end
end
