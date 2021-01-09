class Contact < ApplicationRecord
  belongs_to :client

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :category

  validates :message, presence: true

end
