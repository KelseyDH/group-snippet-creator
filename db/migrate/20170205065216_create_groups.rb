class CreateGroups < ActiveRecord::Migration[5.0]
  def change
    create_table :groups do |t|
      t.string :name
      # using this approach for handling money:  http://stackoverflow.com/a/1019972
      # if project works with money frequently I would use a money gem
      t.decimal :balance, precision: 8, scale: 2
      t.string :private

      t.timestamps
    end
  end
end
