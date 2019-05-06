class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :user_id, :course_id
end
