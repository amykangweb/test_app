class CreatePeeps < ActiveRecord::Migration
  def change
    create_table :peeps do |t|
      t.string :content
      t.references :comment, index: true

      t.timestamps null: false
    end
  end
end
