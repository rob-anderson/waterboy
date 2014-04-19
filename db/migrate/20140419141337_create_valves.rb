class CreateValves < ActiveRecord::Migration
  def change
    create_table :valves do |t|
      t.column :name, :string
      t.column :on, :boolean, :default => false
      t.timestamps
    end
  end
end
