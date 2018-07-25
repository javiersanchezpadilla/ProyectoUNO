class CreateProfessors < ActiveRecord::Migration[5.1]
  def change
    create_table :professors do |t|
      t.string :nombre
      t.date :fecha_nacimiento
      t.string :rfc

      t.timestamps
    end
  end
end
