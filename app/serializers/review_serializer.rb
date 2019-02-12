class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :rating, :review_text
end
