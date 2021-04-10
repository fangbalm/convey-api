class PromptsController < ApplicationController
    def index 
        prompts = Prompt.all 
         render json: prompts
     end 
 
     def show 
         @prompt = Prompt.find(params[:id])
         render json: @prompt
     end 
 
     def create
         @prompt = Prompt.create!(prompt_params)
 
         if @prompt.valid? 
             render json: @prompt
         else 
             render json: {error: 'Error while posting prompt.'}, status: :not_acceptable
         end
     end 
 
     def destroy 
         @prompt = Prompt.find(params[:id])
         @prompt.destroy! 
         render json: {}
     end 
 
     private 
     def prompt_params 
         params.require(:prompt).permit(:user_id, :title, :description, :private)
     end 
end
