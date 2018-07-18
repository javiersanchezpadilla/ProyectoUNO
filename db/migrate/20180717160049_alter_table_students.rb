class AlterTableStudents < ActiveRecord::Migration[5.1]
  def change
    # Agregar un id, en este caso plan_id
    add_reference :students, :plan, foreign_key: true
    remove_column :students, :clave_carrera, :string
  end
end
