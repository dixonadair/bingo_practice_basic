class CreateBingoboards < ActiveRecord::Migration
  def change
    create_table :bingoboards do |t|
      t.boolean :win, default: false
      t.text :tags, array: true, default: []

      t.timestamps null: false
    end
  end
end
