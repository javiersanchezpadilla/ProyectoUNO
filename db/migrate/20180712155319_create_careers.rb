class CreateCareers < ActiveRecord::Migration[5.1]
  def change
    create_table :careers do |t|
      t.string :clave_carrera
      t.string :descripcion

      t.timestamps
    end
  end
end
