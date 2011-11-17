class CreateMenus < ActiveRecord::Migration
  def self.up
    create_table :menus do |t|
      t.string :nome
      t.integer :parent_id
      t.boolean :ativo
      t.timestamps
    end
  end

  def self.down
    drop_table :menus
  end
end
