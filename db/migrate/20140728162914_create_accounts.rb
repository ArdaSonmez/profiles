class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.string :url
      t.string :caption

      t.timestamps
    end
  end
end
