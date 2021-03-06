class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_one :userparam
         has_many :comments
         has_many :orders

        ratyrate_rateable 'original_score'
        ratyrate_rater

         acts_as_messageable

         def mailboxer_email(object)
			     email
			   end
end
