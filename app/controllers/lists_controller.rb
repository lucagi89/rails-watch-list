class ListsController < ApplicationController
  before_action :define_list, only: ["show", "create", "edit"]
  def index
    @lists = List.all
    @list = List.new
  end

  def show
    @movies = @list.movies
    @bookmarks = @list.bookmarks
    @movies_from_query = Movie.where("title LIKE ?", "%#{params[:query]}%")
  end

  def new
    @list = List.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def define_list
    @list = List.find(params[:id])
  end
end
