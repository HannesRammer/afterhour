class CreateAfterHours < ActiveRecord::Migration[5.2]
  def change
    create_table :after_hours do |t|
      t.string :name
      t.boolean :active
      t.string :user_id


      t.timestamps
    end
    add_index :after_hours, :name, unique: true
  end
end
