class CreatePayouts < ActiveRecord::Migration[5.1]
  def change
    create_table :payouts do |t|
      t.integer :bet_id
      t.float :amount
      t.integer :rank

      t.timestamps
    end
  end
end
