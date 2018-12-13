class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :Addr1
      t.string :Addr2
      t.string :Country
      t.references :company, foreign_key: true

      t.timestamps
    end
  end
end
