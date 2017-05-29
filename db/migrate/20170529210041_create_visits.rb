class CreateVisits < ActiveRecord::Migration[5.1]
  def change
    create_table :visits do |t|
      t.integer :link_id
      t.string :ip_address

      t.timestamps
    end
  end
end
