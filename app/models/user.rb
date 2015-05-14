class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, presence: true
  validates :last_name, presence: true

  validates_uniqueness_of    :email,     :case_sensitive => false, :allow_blank => true, :if => :email_changed?
  validates_format_of    :email,    :with  => Devise.email_regexp, :allow_blank => true, :if => :email_changed?
  validates_presence_of    :password, :on=>:create
  validates_confirmation_of    :password, :on=>:create
  validates_length_of    :password, :within => Devise.password_length, :allow_blank => true



  # validate :password_complexity


  # def password_complexity
  #   # return if self.new_record?
  #   if password.present? &&
  #     !password.match(/^((?=.*[a-z])(?=.*[A-Z])(?=.*\d))|((?=.*[a-z])(?=.*[A-Z])(?=.*?[^a-zA-Z0-9]))|((?=.*[a-z])(?=.*?[^a-zA-Z0-9])(?=.*\d))|((?=.*?[^a-zA-Z0-9])(?=.*[A-Z])(?=.*\d))/)
  #     errors.add :password, "must include at least 3 out of 4 types of characters: lowercase, uppercase, numbers, special characters"
  #   end
  # end
   
end
