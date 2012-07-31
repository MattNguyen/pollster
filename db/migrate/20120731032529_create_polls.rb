class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :title
      t.string :edit_url

      t.timestamps
    end
  end
end
