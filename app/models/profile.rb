class Profile < ApplicationRecord
    has_many :profile_articles, dependent: :destroy
end
