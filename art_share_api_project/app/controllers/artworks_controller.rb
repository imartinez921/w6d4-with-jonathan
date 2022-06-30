class ArtworksController < ApplicationController
    def index
        @artworks = Artwork.all
        render json: @artworks
    end

    def create
        # render json: params
        artwork = Artwork.new(artwork_params)
        # replace the `artwork_attributes_here` with the actual attribute keys
        if artwork.save
            render json:artwork
        else
            render json: artwork.errors.full_messages, status: unprocessable_entity
        end
    end

    def show
        # render json: params
        @artwork = Artwork.find(params[:id])
        render json: @artwork
    end


    def update
        # debugger
        @artwork = Artwork.find(params[:id])
        if @artwork.update(artwork_params)
            redirect_to artwork_url(@artwork)
        else
            render json: @artwork.errors.full_messages, status: unprocessable_entity
        end
    end

    def destroy
        @artwork = Artwork.find(params[:id])
        @artwork.destroy
        redirect_to "/artworks"
    end


    private
    def artwork_params
        params.require(:artwork).permit(:id, :title, :image_url, :artist_id)
    end
end