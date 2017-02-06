class CreateOcenkas < ActiveRecord::Migration
  def change
    create_table :ocenkas do |t|

      t.timestamps
    end
  end
end
