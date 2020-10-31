class AddDogsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.column :dogName, :string
      t.column :dogType, :string
      t.column :dogSize, :string
    end
  end
end
