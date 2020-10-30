class AddCatsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :cats do |t|
      t.column :catName, :string
      t.column :catType, :string
    end
  end
end
