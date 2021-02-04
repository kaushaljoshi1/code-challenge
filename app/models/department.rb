class Department < ApplicationRecord
  has_rich_text :description
  belongs_to :company
  has_many :employees
end
