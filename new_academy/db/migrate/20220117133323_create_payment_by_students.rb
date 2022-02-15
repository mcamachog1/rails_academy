class CreatePaymentByStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :payment_by_students do |t|
      t.references :student, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.decimal :amount_usd, precision: 5, scale: 2
      t.decimal :amount_bs, precision: 8, scale: 2

      t.timestamps
    end
  end
end
