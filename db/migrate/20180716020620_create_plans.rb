class CreatePlans < ActiveRecord::Migration[5.1]
  def change
    create_table :plans do |t|
      t.string :clave_plan_estudio

      t.timestamps
    end
  end
end
