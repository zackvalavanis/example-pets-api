class CreatePets < ActiveRecord::Migration[7.1]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :age
      t.string :breed
      t.integer :user_id

      t.timestamps
    end
  end
end
