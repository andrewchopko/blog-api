class Post
  include Mongoid::Document
  field :title, type: String
  field :content, type: String
  belongs_to :author, dependent: :delete
end
