class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |user|
      user.string :name
      user.string :description
      user.integer :age
      user.string :interests
      user.string :photo
      user.string :availability
      user.string :location
      user.string :username
      user.string :password
    end
  end
end
