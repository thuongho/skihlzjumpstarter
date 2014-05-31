class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :orders


# search db for provider and uid to see if record exists
  def self.process_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_create do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.username = auth.info.nickname
    end
  end

  # preload forms with attributes stored in the sessions if they are avail
  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"], without_protection: true) do |user|
        user.attributes = params
        user.valid?
      end
    else 
      super
    end 
  end

  # skip password prompt from Devise when submitting registration form
  def password_required?
    super && provider.blank?
  end

  # user wants to modify profile but don't have password because of remote login
  def update_with_password(params, *options)
    if encrypted_password.blank? && provider.present?
      update_attributes(params, *options)
    else
      super 
    end
  end
end

