class CreateBeaches < ActiveRecord::Migration[5.0]
  def change
    create_table :beaches do |t|
      t.string :name
      t.string :lat
      t.string :lng

      t.timestamps
    end
  end
end
