class BookmarksController < ApplicationController

  def new
    @movies = Movie.all
    @list = List.new
  end

  def create
    raise
    @list = List.find(params[:list_id])
    @movie = Movie.find(params[:movie_id])
    @bookmark = @list.bookmarks.new(movie: @movie, comment: params[:comment])

    if @bookmark.save
      redirect_to @list
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end
end
