class CreateSims < ActiveRecord::Migration
  def change
    create_table :sims do |t|

      t.timestamps
    end
  end
end
