class AddForeingkeyToPlans < ActiveRecord::Migration[5.1]
  def change
    add_reference :plans, :career, foreign_key: true
  end
end
