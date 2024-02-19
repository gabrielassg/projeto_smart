class Unidade < ApplicationRecord
    has_many :plano
    has_many :users, through: :plano
end
