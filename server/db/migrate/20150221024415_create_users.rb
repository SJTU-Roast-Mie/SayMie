class CreateUsers < ActiveRecord::Migration
  def change
    # users is the table name, ruby use users instead of user
    create_table :users do |t|
      # rails will create the primary key for u, called 'id' be default

      t.string :name # varchar(255)
      t.string :email
      t.string :phone
      t.string :avatar
      t.string :password_digest # works for user model's

      # the create_at and update_at
      t.timestamps
    end
    # add index for name and mail and phone since we need to login
    add_index :users, :name, unique: true
    add_index :users, :email, unique: true # what if user only has email or only has phone when they register
    add_index :users, :phone
  end
end
