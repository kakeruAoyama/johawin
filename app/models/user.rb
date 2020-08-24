class User < ActiveRecord::Base
  attribute :url_token, :string, default: SecureRandom.hex(10)
  validates :url_token, presence: true, uniqueness: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :authentication_keys => [:user_id]

  # user_idを必須、一意とする
  validates_uniqueness_of :user_id
  validates_presence_of :user_id

  # user_idを仕様してログインするようオーバーライド
  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login)
      # 認証の条件式を変更する
      where(conditions).where(["user_id = :value", {:value => user_id}]).first
    else
      where(conditions).first
    end 
  end 

  # 登録時にemailを不要とする
  def email_required?
    false
  end 

  def email_changed?
    false
  end 
  def will_save_change_to_email?
    false
  end

  # URLをランダムな文字列にする
  def to_param
    url_token
  end
end