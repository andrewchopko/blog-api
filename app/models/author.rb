class Author
  include Mongoid::Document
  include ActiveModel::SecurePassword
  field :name, type: String
  field :posts_count, type: Integer
  field :email, type: String
  field :password_digest, type: String
  embeds_many :posts

  has_secure_password
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: { case_sensitive: false }, email: true
end
