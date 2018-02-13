module SongsHelper

  def artist_id_field(song)
    # if post.author.nil?
    #   select_tag "post[author_id]", options_from_collection_for_select(Author.all, :id, :name)
    # else
    #   hidden_field_tag "post[author_id]", post.author_id
    # end
    if song.artist.nil?
      select_tag "song[artist_id]", options_from_collection_for_select(Artist.all, :id, :name)
    else
      hidden_field_tag "song[artist_id]", song.artist_id
    end
  end

end
