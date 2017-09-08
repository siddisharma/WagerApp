class CreateParticipants < ActiveRecord::Migration[5.1]
  def change
    create_table :participants do |t|
      t.integer :user_id
      t.integer :bet_id

      t.timestamps
    end
  end
end
