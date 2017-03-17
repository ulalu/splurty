class QuotesController < ApplicationController
    def index
        @quote = Quote.order("RANDOM()").first
    end
    
    def new
        @quote = Quote.new
    end
    
    def create
        @quote = Quote.create(quote_params)
        if @quote.invalid?
            flash[:error]= 'The entry you made was either too short or too long to be Alternative.'
        end   
        redirect_to root_path
    end
    
    private
    
    def quote_params
        params.require(:quote).permit(:saying, :author)
    end
end
