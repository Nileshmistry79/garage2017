class CreateJobcard < ActiveRecord::Migration
  def change
    create_table :jobcards do |t|
        t.text :init_problems
        t.integer :estimated_cost
        t.integer :actual_cost
        t.text :techq_name
        t.datetime :date_arrival
        t.datetime :date_delivery
        t.integer :vehicle_id
       t.timestamps    
    end
  end
end
