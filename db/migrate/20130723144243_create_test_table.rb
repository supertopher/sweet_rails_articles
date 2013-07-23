
class CreateTableTest < ActiveRecord::Migration
  def change
    create_table :test_table do |t|
      t.string :testy
    end 
  end
end