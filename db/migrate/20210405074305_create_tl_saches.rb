class CreateTlSaches < ActiveRecord::Migration[6.1]
  def change
    create_table :tl_saches do |t|
      t.string :matheloai
      t.string :tentheloai

      t.timestamps
    end
  end
end
