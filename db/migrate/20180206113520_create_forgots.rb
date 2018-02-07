class CreateForgots < ActiveRecord::Migration
  def change
    create_table :forgots do |t|
      t.string :email

      t.timestamps
    end
  end
end
