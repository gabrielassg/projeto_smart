class Plano < ApplicationRecord
    belongs_to :unidade
    has_many :user
end
