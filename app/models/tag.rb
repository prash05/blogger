class Tag < ApplicationRecord
    has_many :tagging
    has_many :articles, through: :tagging
end
