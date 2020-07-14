class ProfileArticle < ApplicationRecord
  belongs_to :article
  belongs_to :profile
end
