class WordsController < ApplicationController
  def index
    @words = Words.first
  end
end
