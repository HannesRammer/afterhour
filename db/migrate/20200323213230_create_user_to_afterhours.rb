class CreateUserToAfterhours < ActiveRecord::Migration[5.2]
  def change
    create_table :user_to_afterhours do |t|
      t.integer :user_id
      t.integer :afterhour_id
      t.timestamps
    end
  end
end
