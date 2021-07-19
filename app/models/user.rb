class User < ApplicationRecord

  validates :name, length: {maximum: 300}
  validates :role, inclusion: {in: ['author', 'admin']}

  def set_init_values
    self.name = ''
    self.role = 'author'
  end

end
