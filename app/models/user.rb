class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :profile, dependent: :destroy
  after_create :create_profile

  # creation d'un user 
  # creation d'un profile auto 
  # profile va avoir 0 infos 
  # profile page récup-re l'info via current user
  # profile page html 0

  def create_profile
    @profile = Profile.new
    @user = User.last
    @profile.user_id = @user.id
    @profile.save
  end

end
