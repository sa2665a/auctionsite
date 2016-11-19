class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
    	t.integer :amount
    	t.references :user, index:true
    	t.references :product, index: true

      t.timestamps
    end
  end
end
