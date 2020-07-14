class Article < ApplicationRecord
    has_and_belongs_to_many :collections
    has_many :profile_articles
    validates :title, :url, :description, presence: true
    validates :url, uniqueness: true
end