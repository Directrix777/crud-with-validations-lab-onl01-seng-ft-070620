class Song < ActiveRecord::Base
    include ActiveModel::Validations
    validates :title, presence: true
    validates :artist_name, presence: true
    validates :genre, presence: true
    validates_with SongValidator
end