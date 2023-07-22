class Api::V1::ArtistsController < Api::V1::ApplicationController
  def index
    @artists = Artist.all
    @artists = @artists.where("lower(name) = ?", params[:name].downcase) if params[:name]
    @artists = @artists.where("lower(country) = ?", params[:country].downcase) if params[:country]
    render json: @artists
  end

  def show
    @artist = Artist.find_by id: params[:id]
    render json: @artist
  end
end
