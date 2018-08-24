class CreateOnTouchUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :on_touch_users do |t|
      t.string :name
      t.string :prefix
      t.string :email

      t.timestamps
    end
  end
end
