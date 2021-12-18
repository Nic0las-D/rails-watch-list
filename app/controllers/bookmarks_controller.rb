class BookmarksController < ApplicationController
  def Index
    @bookmarks = Bookmark.all
  end

  def show
    @bookmark = Bookmark.find(params[:id])
  end

  def new
    @bookmark = Bookmark.new
    @bookmark.save
  end

  def create
    @bookmarks = Bookmarks.new(params[:bookmark])
    @bookmarks.save
    # Will raise ActiveModel::ForbiddenAttributesError
    private
    redirect_to bookmark_path(@bookmark)
  end

  def bookmark_params
    params.require(:bookmark).permit(:title, :overview, :poster_url)
  end

  def destroy
    @bookmark = Bookmark.find(params[:id])
    @bookmark.destroy
  end
end
