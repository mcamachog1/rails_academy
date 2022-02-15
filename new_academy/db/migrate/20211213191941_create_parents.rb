class CreateParents < ActiveRecord::Migration[6.1]
  def change
    create_table :parents do |t|
      t.string :name
      t.string :email
      t.string :mobile

      t.timestamps
    end
  end
end
