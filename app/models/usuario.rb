class Usuario < ApplicationRecord
    #Utilizando o bcrypt
    has_secure_password

    #validações para não ser nulos e email único
    validates :email, presence: true, uniqueness: true
    validates :password, presence: true
    validates :name, presence: true


end
