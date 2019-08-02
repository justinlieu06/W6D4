# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  artist_id  :integer
#  title      :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Artwork < ApplicationRecord
  validates :title, :image_url, presence: true, uniqueness: true
  validates :artist_id, presence: true

  belongs_to :artist,
  foreign_key: :artist_id,
  class_name: 'User'
  
  has_many :artwork_shares,
  foreign_key: :artwork_id,
  class_name: 'ArtworkShare',
  dependent: :destroy

  has_many :shared_viewers,
  through: :artwork_shares,
  source: :viewer

  has_many :comments,
  foreign_key: :artwork_id,
  class_name: 'Comment',
  dependent: :destroy
end
