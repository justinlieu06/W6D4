require 'byebug'
class ArtworksController < ApplicationController
  def index
    artwork_owned = User.find(params[:id]).artworks
    artwork_shared = User.find(params[:id]).shared_artworks
    render json: artwork_owned.concat(artwork_shared)
  end

  def show
    artwork = Artwork.find(params[:id])
    if artwork
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def create
    artwork = Artwork.new(artwork_params)
    debugger
    if artwork.save
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def update
    artwork = Artwork.find(params[:id])
    if artwork.update(artwork_params)
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  def destroy
    artwork = Artwork.find(params[:id])
    if artwork.destroy
      render json: artwork
    else
      render json: artwork.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def artwork_params
    params.require(:artwork).permit(:artist_id, :title, :image_url)
  end
end
