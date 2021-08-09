class ReadersController < ApplicationController
  def index
    @readers = Reader.all
    @cards = Card.all
  end

  def new
    @reader = Reader.new
    @card = Card.new
  end

  def create
    @reader = Reader.new(reader_params)

    if @reader.save
      redirect_to reader_params
    else
      render 'new'
    end
  end

  def edit
    @reader = Reader.find(params[:id])
  end

  def update
    @reader = Reader.find(params[:id])
    if @reader.update(reader_params)
      redirect_to readers_path
    else
      render 'edit'
    end
  end

  def show
    @reader = Reader.find(params[:id])
  end

  def destroy
    @reader = Reader.find(params[:id])
    @reader.destroy
    redirect_to readers_path
  end

  private
  def reader_params
    params.require(:reader).permit(:id, :first_name, :last_name, :birthday)
  end
end
