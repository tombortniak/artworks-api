class Api::V1::ArtworksController < Api::V1::ApplicationController
  def index
    @artworks = Artwork.all
    @artworks = @artworks.where("lower(title) = ?", params[:title].downcase) if params[:title]
    @artworks = @artworks.joins(:artist).where("lower(name) = ?", params[:artist].downcase) if params[:artist]
    @artworks = @artworks.where("lower(city) = ?", params[:city]) if params[:city]
    @artworks = @artworks.where("lower(country) = ?", params[:country]) if params[:country]
    @artworks = @artworks.where("lower(continent) = ?", params[:continent]) if params[:continent]
    render json: @artworks.to_json(include: :artist, except: :artist_id)
  end
  
  def show
    @artwork = Artwork.find_by id: params[:id]
    render json: @artwork.to_json(include: :artist, except: :artist_id)
  end
end

class BigDecimal
  def as_json
    to_f
  end
end
