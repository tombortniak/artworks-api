class ArtworksController < ApplicationController
  def index
    @artworks = Artwork.all
    @artworks = @artworks.where("lower(title) = ?", params[:title].downcase) if params[:title]
    @artworks = @artworks.joins(:artist).where("lower(name) = ?", params[:artist].downcase) if params[:artist]
    @artworks = @artworks.where("lower(city) = ?", params[:city]) if params[:city]
    @artworks = @artworks.where("lower(country) = ?", params[:country]) if params[:country]
    @artworks = @artworks.where("lower(continent) = ?", params[:continent]) if params[:continent]
    render json: @artworks
  end
  
  def show
    @artwork = Artwork.find_by id: params[:id]
    render json: @artwork
  end
end
