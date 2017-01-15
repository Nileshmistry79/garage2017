class CustomerTable < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.text :cust_Name
      t.text :cust_Add
      t.text :cust_mobile
      t.text :cust_email
      t.timestamps
      
    end
  end
end
