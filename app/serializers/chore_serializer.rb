class ChoreSerializer < ActiveModel::Serializer
  attributes :id, :name, :due_date, :difficulty, :completed
end
