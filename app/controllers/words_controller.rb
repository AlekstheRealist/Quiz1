class WordsController < ApplicationController
  def index
    @words = Word.order("RANDOM()").first
  end

  def new
    @words = Word.new
  end
end
