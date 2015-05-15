class CreateUserContacts < ActiveRecord::Migration
  def change
    create_table :user_contacts do |t|
      t.string :type_of_contact
      t.string :contact_info
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end