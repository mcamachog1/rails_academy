class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.date :date
      t.decimal :amount_usd, precision: 5, scale: 2
      t.decimal :amount_bs, precision: 8, scale: 2
      t.references :parent, null: false, foreign_key: true

      t.timestamps
    end
  end
end
