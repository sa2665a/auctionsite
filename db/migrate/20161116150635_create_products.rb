class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
    	t.references :user, index:true
    	t.integer :user_id
    	t.text :title
    	t.text :description
    	t.datetime :deadline
      t.boolean :active 
      t.integer :minimum_bid

      t.timestamps
    end
  end
end
