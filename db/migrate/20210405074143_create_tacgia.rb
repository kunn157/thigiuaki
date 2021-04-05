class CreateTacgia < ActiveRecord::Migration[6.1]
  def change
    create_table :tacgia do |t|
      t.string :ma_tacgia
      t.string :ten_tacgia
      t.string :website
      t.string :ghichu

      t.timestamps
    end
  end
end
