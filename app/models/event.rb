class Event < ApplicationRecord
    has_many :tickets
    has_many :bookmarks
    has_many :users, through: :tickets
    has_many :users, through: :bookmarks
end
