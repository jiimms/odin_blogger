class Comment < ApplicationRecord
  belongs_to :article

  validates :author_name, presence: true
  validates :body, presence: true, length: {minimum: 20}
end