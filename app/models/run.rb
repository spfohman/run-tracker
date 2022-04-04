class Run < ApplicationRecord
    belongs_to :user
    validates :distance, presence: true
end
