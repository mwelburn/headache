class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  validates_presence_of :name

  has_many :headaches, :dependent => :destroy

  def all_headaches
    Headache.find_all_by_user_id(current_user.id)
  end

  def add_headache(headache)
    self.headaches.build(:headache => headache)
  end
end
