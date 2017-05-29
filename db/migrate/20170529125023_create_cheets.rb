class CreateCheets < ActiveRecord::Migration[5.1]
  def change
    create_table :cheets do |t|
      t.text :text

      t.timestamps
    end
  end
end
