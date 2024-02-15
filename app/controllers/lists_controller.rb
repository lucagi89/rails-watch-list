class ListsController < ApplicationController
  before_action :define_list, only: ["show", "edit", "update", "destroy"]
  def index
    @lists = List.all
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
    @list = List.new(params.require(:list).permit(:name, :photo))
    @list.save
    if @list.save
      redirect_to list_path(@list), notice: 'List created successfully.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def define_list
    @list = List.find(params[:id])
  end
end
