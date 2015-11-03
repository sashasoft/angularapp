class CreateManMen < ActiveRecord::Migration
  def change
    create_table :man_men do |t|
      t.string :name
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
