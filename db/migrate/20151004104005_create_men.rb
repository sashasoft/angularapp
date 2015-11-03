class CreateMen < ActiveRecord::Migration
  def change
    create_table :men do |t|
      t.string :name
      t.string :email
      t.integer :age

      t.timestamps
    end
  end
end
