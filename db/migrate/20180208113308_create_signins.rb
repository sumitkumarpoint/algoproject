class CreateSignins < ActiveRecord::Migration
  def change
    create_table :signins do |t|
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
