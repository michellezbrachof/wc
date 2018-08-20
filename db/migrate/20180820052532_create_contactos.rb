class CreateContactos < ActiveRecord::Migration[5.2]
  def change
    create_table :contactos do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :service_type
      t.string :stage
      t.float :budget
      t.string :timeframe
      t.string :start

      t.timestamps
    end
  end
end
