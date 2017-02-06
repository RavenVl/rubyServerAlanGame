class CreateNds < ActiveRecord::Migration
  def change
    create_table :nds do |t|

      t.timestamps
    end
  end
end
