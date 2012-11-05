class AddRememberTokenToUsers < ActiveRecord::Migration
  class User < ActiveRecord::Base
  end

  def change
    add_column :users, :remember_token, :string
    add_index  :users, :remember_token

    # http://guides.rubyonrails.org/migrations.html#using-models-in-your-migrations
    # Reset the column information of the faux user class defined above to be safe on migration scenarios.
    User.reset_column_information
    set_user_remember_token
  end

  private

  def set_user_remember_token
    # update all users without an remember token
    # due the before_save callback on user, the actual value will be defined by the user model
    User.where(remember_token: nil).each do |u|
      u.update_attribute(:remember_token, SecureRandom.urlsafe_base64)
    end
  end
end
