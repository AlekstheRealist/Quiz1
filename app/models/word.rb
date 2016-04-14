class Word < ActiveRecord::Base
  validates :adjective1, presence: true, length: { maximum: 40, minimum: 2 }
  validates :noun1, presence: true, length: { maximum: 40, minimum: 2 }
  validates :pnoun, presence: true, length: { maximum: 40, minimum: 2 }
  validates :person, presence: true, length: { maximum: 40, minimum: 2 }
  validates :adjective2, presence: true, length: { maximum: 40, minimum: 2 }
  validates :clothing, presence: true, length: { maximum: 40, minimum: 2 }
  validates :noun2, presence: true, length: { maximum: 40, minimum: 2 }
  validates :city, presence: true, length: { maximum: 40, minimum: 2 }
end
