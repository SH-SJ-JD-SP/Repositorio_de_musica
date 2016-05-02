class User < ActiveRecord::Base

	enum role: [:normal_user, :admin]
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    #MANEJO DE IMÁGENES
    has_attached_file :imagenPerfil, styles: { medium:"1280x720", thumb:"50x50>" }
    validates_attachment_content_type :imagenPerfil, content_type: /\Aimage\/.*\Z/
end
