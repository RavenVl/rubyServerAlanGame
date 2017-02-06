class CreateConsts < ActiveRecord::Migration
  def change
    create_table :consts do |t|

      t.timestamps
    end
  end
end
