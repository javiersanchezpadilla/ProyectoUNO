class CreateTeachers < ActiveRecord::Migration[5.1]
  def change
    create_table :teachers do |t|
      t.string :curp
      t.string :nombre
      t.string :titulo
      t.string :num_cedula

      t.timestamps
    end
  end
end
