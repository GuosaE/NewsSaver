class CreateJoinTableCollectionArticle < ActiveRecord::Migration[6.0]
  def change
    create_join_table :collections, :articles do |t|
      # t.index [:collection_id, :article_id]
      # t.index [:article_id, :collection_id]
    end
  end
end
