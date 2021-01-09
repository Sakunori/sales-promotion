class Category < ActiveHash::Base
  self.data = [
    {id: 1, status: "仕事の相談"}, {id: 2, status: "遊びのお誘い"},{id: 3, status: "その他"}
  ]

  include ActiveHash::Associations
  has_many :contacts

end