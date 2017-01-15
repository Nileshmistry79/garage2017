class Vehicletable < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.text :vehicle_no
      t.text :Model_name
      t.integer :customer_id
      t.timestamps    
    end  
  end
end
