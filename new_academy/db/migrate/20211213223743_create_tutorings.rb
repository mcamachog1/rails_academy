class CreateTutorings < ActiveRecord::Migration[6.1]
  def change
    create_table :tutorings do |t|
      t.date :date
      t.time :start
      t.time :end
      t.references :tutor, null: false, foreign_key: true
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
