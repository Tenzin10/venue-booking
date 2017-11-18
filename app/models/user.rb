class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         #one to many association
         has_many :venues
         #this method retruns user's name
         def full_name
         	retrun "#{first_name} #{last_name}".strip if(first_name || last_name) 
         	"Anonymous"
         end
end
