class CreateBets < ActiveRecord::Migration[5.1]
  def change
    create_table :bets do |t|
      t.string :title
      t.float :buy_in
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.integer :admin_id

      t.timestamps
    end
  end
end
