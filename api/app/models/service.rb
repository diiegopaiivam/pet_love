class Service < ApplicationRecord
    validates :name, :price, presence: true

    has_many :user
end
