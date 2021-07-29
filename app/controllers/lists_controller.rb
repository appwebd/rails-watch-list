class ListsController < ApplicationController
  before_action :set_find_list, only: %i[show edit update destroy]

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(params_list)
    if @list.save
      redirect_to lists_path(@list.id)
    else
      render :new
    end
  end

  def edit; end

  def update
    @list.update(params_list)
    redirect_to lists_path(@list.id)
  end

  def show
    @bookmark = Bookmark.new
  end

  def destroy
    @list.destroy
    redirect_to lists_path
  end

  private

  def params_list
    params.require(:list).permit(:name)
  end

  def set_find_list
    @list = List.find(params[:id])
  end
end
