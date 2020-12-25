class CreateChecks < ActiveRecord::Migration[6.0]
  def change
    create_table :checks do |t|
      t.string :title,            null: false
      t.string :item1,            null: false
      t.string :item2
      t.string :item3
      t.string :item4
      t.string :item5
      t.string :item6
      t.string :item7
      t.string :item8
      t.string :item9
      t.string :item10
      t.string :item11
      t.string :item12
      t.string :item13
      t.string :item14
      t.string :item15
      t.string :item16
      t.string :item17
      t.string :item18
      t.string :item19
      t.string :item20
      t.references :user,           null: false, foreign_key: true 
      t.timestamps
    end
  end
end