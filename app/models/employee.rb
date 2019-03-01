class Employee < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :alias, presence: true
  validates :alias, uniqueness: true
  validates :title, presence: true
  validates :title, uniqueness: true
  validates :office, presence: true
  belongs_to :dog


  def full_name
    self.first_name + " " + self.last_name
  end
end
