class User < ApplicationRecord
  has_secure_password
  validates :name, :email, presence: true
  validates :name, :email, uniqueness: { case_sensitive: false }

  before_create {
    generate_token(:auth_token)
  }

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end

  def avatar
    gravatar_id = Digest::MD5.hexdigest(self.email.downcase)
    "http://gravatar.com/avatar/#{gravatar_id}.png?s=512&d=retro"
  end


end
