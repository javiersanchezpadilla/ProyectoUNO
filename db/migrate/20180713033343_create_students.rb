class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :control
      t.string :nombre
      t.string :clave_carrera

      t.timestamps
    end
  end
end
