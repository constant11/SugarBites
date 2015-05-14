class AddTheBasicFieldsToUsers < ActiveRecord::Migration
  def up
    add_column :users, :first_name, :string, limit: 100
    add_column :users, :middle_name, :string, limit: 100
    add_column :users, :last_name, :string, limit: 100
    add_column :users, :gender, :enum, limit: ['MALE', 'FEMALE']
    add_column :users, :status, :enum, limit: ['ACTIVE', 'DELETED', 'BANNED']
    add_column :users, :type_of_user, :enum, limit: ['ADMIN', 'USER']
    add_column :users, :birth_date, :date
  end
  def down 
    remove_column :users, :first_name
    remove_column :users, :middle_name
    remove_column :users, :last_name
    remove_column :users, :gender
    remove_column :users, :status
    remove_column :users, :type_of_user
    remove_column :users, :birth_date
  end
end
