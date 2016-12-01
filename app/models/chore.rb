class Chore < ActiveRecord::Base
  validates :name, presence: true
  validates :due_date, format: { with: /\d{4}\-\d{2}\-\d{2}/ }
  validates :difficulty, length: { maximum: 1 }
end
