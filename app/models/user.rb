class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :omniauthable

         #validacion de campos requeridos
         validates :name, :email, :password, :presence => { message: 'Campo requerido'}

         #validacion de largos permitidos
         validates :password, :length => { :minimum => 6, :maximum => 80, :message => 'Tu contraseña debe tener al menos 6 caracteres.'}
         validates :name, :length => { :maximum => 50, :message => 'Tu nombre excede el máximo de 50 caracteres.'}

         #validacoin email formato
         validates :email, :email_format => { :message => 'Introduce un correo electrónico válido' }

         #validacion email unico
         validates :email, :uniqueness => { message: 'Esta cuenta ya se encuentra registrada. Debes ir a iniciar sesión.'}

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.email = auth.info.email
      user.password = Devise.friendly_token[0,20]
      user.name = auth.info.name 
      user.avatar = auth.info.image
    end
  end


end
