class CreateNxbs < ActiveRecord::Migration[6.1]
  def change
    create_table :nxbs do |t|
      t.string :ma_nxb
      t.string :ten_nxb
      t.string :diachi
      t.string :email
      t.string :thongtin

      t.timestamps
    end
  end
end
