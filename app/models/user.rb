class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :timeoutable :omniauthable :registerable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :validatable, :trackable, 
         :confirmable, :lockable
  # NB: Intend to use confirmable only for re-confirmation

  validates :name, length: {maximum: 300}
  validates :role, inclusion: {in: ['author', 'admin']}

  def set_init_values
    self.name = ''
    self.role = 'author'
  end

end
