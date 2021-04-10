class JournalsController < ApplicationController
    def index 
       @journals = Journal.all 
        render json: @journals
    end 

    def show 
        @journal = Journal.find(params[:id])
        render json: @journal
    end 

    def create
        @journal = Journal.create!(journal_params)

        if @journal.valid? 
            render json: @journal
        else 
            render json: {error: 'Error while posting journal.'}, status: :not_acceptable
        end
    end 

    def destroy 
        @journal = Journal.find(params[:id])
        @journal.destroy! 
        render json: {}
    end 

    private 
    def journal_params 
        params.require(:journal).permit(:user_id, :title, :description, :private)
    end 

end
