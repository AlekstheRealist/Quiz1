class WordsController < ApplicationController
  def index
    @words = Word.all
  end

  def new
    @words = Word.new
  end

  def create
    @words = Word.create(quote_params)
    if @words.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path 
  end

  private

  def quote_params
    params.require(:word).permit(:adjective1, :noun1, :pnoun, :person, :adjective2, :clothing, :noun2, :city)
  end

end
