class Client < ApplicationRecord

  has_many :contacts
  accepts_nested_attributes_for :contacts, allow_destroy: true  # fields_for（後述）に必要

  validates :nickname, :email, presence: true

end
