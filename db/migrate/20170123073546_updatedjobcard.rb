class Updatedjobcard < ActiveRecord::Migration
  def change
    add_column :jobcards , :clutch_cabel, :boolean , null: false, default: false
    add_column :jobcards , :accelrator_cabel, :boolean , null: false, default: false
    add_column :jobcards , :choke_cabel, :boolean , null: false, default: false
    add_column :jobcards , :break_liner_cabel, :boolean , null: false, default: false
    add_column :jobcards , :break_pads, :boolean , null: false, default: false
    add_column :jobcards , :piston, :boolean , null: false, default: false
    add_column :jobcards , :valves_set, :boolean , null: false, default: false
    add_column :jobcards , :sterring_cone_set, :boolean , null: false, default: false
    add_column :jobcards , :paid_service, :boolean , null: false, default: false
  end
end
