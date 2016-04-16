class WordsController < ApplicationController
  def index
    @words = Word.all
    @adjective1 = Word.last.adjective1
    @noun1 = Word.last.noun1
    @pnoun = Word.last.pnoun
    @person = Word.last.person
    @adjective2 = Word.last.adjective2
    @clothing = Word.last.clothing
    @noun2 = Word.last.noun2
    @city = Word.last.city
  end

  def create
    @words = Word.create(quote_params)
    if @words.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to root_path 
  end

  def new
  end

  #def show
  #end

  private

  def quote_params
    params.require(:word).permit(:adjective1, :noun1, :pnoun, :person, :adjective2, :clothing, :noun2, :city)
  end

end
