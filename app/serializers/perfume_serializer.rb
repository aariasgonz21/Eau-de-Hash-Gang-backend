class PerfumeSerializer < ActiveModel::Serializer
  attributes :id, :name, :img, :catchphrase, :scent, :price, :category, :reviews
end
