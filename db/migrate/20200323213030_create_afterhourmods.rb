class CreateAfterhourmods < ActiveRecord::Migration[5.2]
  def change
    create_table :afterhourmods do |t|

      t.timestamps
    end
  end
end
