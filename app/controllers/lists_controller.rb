class ListsController < ApplicationController
  def new
    @lists = Book.all
    @list = Book.new
  end
  
  def create
    @list = Book.new(list_params)
    
    if @list.save
      redirect_to list_path(@list.id), notice: 'successfully'
    else
      @lists = Book.all
      render :books_path
    end
  end  

  def index
  end

  def show
    @list = Book.find(params[:id])
  end

  def edit
    @list = Book.find(params[:id])
  end
  
  def update
     list = Book.find(params[:id])
     list.update(list_params)
     redirect_to list_path(list.id), notice: 'successfully'
  end


  def book
  end
  
 
  private
  
  def list_params
    params.require(:book).permit(:title, :body)
  end
  
 
end
