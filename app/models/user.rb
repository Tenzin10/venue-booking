class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         #this method retruns user's name
         def method_name
         	retrun "#{first_name} #{last_name}".strip if(first_name || last_name) 
         	"Anonymous"
         end
end
