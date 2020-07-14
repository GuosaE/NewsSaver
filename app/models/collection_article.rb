class CollectionsArticle < ApplicationRecord
    belongs_to :collection
    belongs_to :article
end