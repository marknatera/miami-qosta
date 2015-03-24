class AddPaymentScheduleAndPenthouseToDevelopment < ActiveRecord::Migration
  def change
    add_column :developments, :payment_schedule, :text
    add_column :developments, :penthouse, :text
  end
end
