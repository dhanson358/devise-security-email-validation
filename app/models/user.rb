class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :secure_validatable
  validates :email, 'valid_email_2/email': { mx: true, disposable: true, disallow_subaddressing: true}
end
