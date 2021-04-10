class EntriesController < ApplicationController
    def index 
        entries = Entry.all 
        render json: entries
    end 

    def show 
        @entry = Entry.find(params[:id])
        render json: @entry
    end 

    def create
        @entry = Entry.create!(entry_params)

        if @entry.valid? 
            render json: @entry
        else 
            render json: {error: 'Error while posting entry.'}, status: :not_acceptable
        end
    end 

    def destroy 
        @entry = Entry.find(params[:id])
        @entry.destroy! 
        render json: {}
    end 

    private 
    def entry_params 
        params.require(:entry).permit(:journal_id, :prompt_id, :title, :mood, :content, :date)
    end 


end
