class SongValidator < ActiveModel::Validator
    def validate(record)
        unless !(Song.find_by title: record.title, release_year: record.release_year)
            record.errors[:song] << "Cannot create a song with the same name as a previous song in the same year"
        end
        if record.released
            if !record.release_year
                record.errors[:song] << "Please either add the release year, or unmark the song as released."
            end
        end
        if record.release_year
            if record.release_year > 2020
                record.errors[:song] << "Cannot create a song in the future. \nFuture Travel tech is the next big thing on our to do list. \nPlease be patient until we have made our site Future Travel Compatible. \nFor now, we'll have to keep making songs only in the present, or past."
            end
        end
    end
end