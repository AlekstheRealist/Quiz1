class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|

      t.string :adjective1
      t.string :noun1
      t.string :pnoun
      t.string :person
      t.string :adjective2
      t.string :clothing
      t.string :noun2
      t.string :city

      t.timestamps
    end
  end
end
