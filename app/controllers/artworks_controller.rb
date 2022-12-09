class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
  end

  def show
    @artwork = Artwork.find(params[:id])
  end

  def new
    @artwork = Artwork.new
  end

  def create
    @artwork = Artwork.new(artwork_params)

    if @artwork.save
      redirect_to @artwork
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @artwork = Artwork.find(params[:id])
  end

  def update
    @artwork = Artwork.find(params[:id])

    if @artwork.update(artwork_params)
      redirect_to @artwork
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @artwork = Artwork.find(params[:id])
    @artwork.destroy

    redirect_to root_path, status: :see_other
  end

  private
  def artwork_params
    params.require(:artwork).permit(:title, :author, :date, :typeof, :image)
  end
end
