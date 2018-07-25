class CreateSubjects < ActiveRecord::Migration[5.1]
  def change
    create_table :subjects do |t|
      t.references :student, foreign_key: true
      t.references :professor, foreign_key: true
      t.string :nombre

      t.timestamps
    end
  end
end
