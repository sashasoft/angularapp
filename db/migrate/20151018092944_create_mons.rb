class CreateMons < ActiveRecord::Migration
  def change
    create_table :mons do |t|

      t.timestamps
    end
  end
end
