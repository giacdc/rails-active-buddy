class ChangeIsAcceptedToFalseInBookings < ActiveRecord::Migration[7.0]
  def change
    change_column_default :bookings, :is_accepted, false
  end
end
