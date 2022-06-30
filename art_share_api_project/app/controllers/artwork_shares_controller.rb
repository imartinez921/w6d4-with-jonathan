class ArtworkSharesController < ApplicationController
    # def index
    #     @artwork_shares = ArtworkShare.all
    #     render json: @artwork_shares
    # end

    def create
        # render json: params
        artwork_share = ArtworkShare.new(artwork_share_params)
        # replace the `artwork_share_attributes_here` with the actual attribute keys
        if artwork_share.save
            render json:artwork_share
        else
            render json: artwork_share.errors.full_messages, status: unprocessable_entity
        end
    end

    def destroy
        @artwork_share = ArtworkShare.find(params[:id])
        removed = @artwork_share.destroy
        render json: removed
    end

    # def show
    #     # render json: params
    #     @artwork_share = ArtworkShare.find(params[:id])
    #     render json: @artwork_share
    # end


    # def update
    #     # debugger
    #     @artwork_share = ArtworkShare.find(params[:id])
    #     if @artwork_share.update(_params)
    #         redirect_to artwork_share_url(@artwork_share)
    #     else
    #         render json: @artwork_share.errors.full_messages, status: unprocessable_entity
    #     end
    # end

  


    private
    def artwork_share_params
        params.require(:artwork_share).permit(:id, :artwork_id, :viewer_id)
    end
end