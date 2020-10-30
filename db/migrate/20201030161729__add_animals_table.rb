class AddAnimalsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :animals do |t|
      t.column :catName, :string
      t.column :dogName, :string
      t.column :catType, :string
      t.column :dogType, :string
      t.column :dogSize, :string
    end
  end
end
