class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :college
      t.integer :year
      t.string :email
      t.string :mobile
      t.references :parent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
