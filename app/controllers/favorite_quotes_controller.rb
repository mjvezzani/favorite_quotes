class FavoriteQuotesController < ApplicationController
  before_action :set_favorite_quote, only: [:show, :edit, :update, :destroy]

  # GET /favorite_quotes
  # GET /favorite_quotes.json
  def index
    @favorite_quotes = FavoriteQuote.all
  end

  # GET /favorite_quotes/1
  # GET /favorite_quotes/1.json
  def show
  end

  # GET /favorite_quotes/new
  def new
    @favorite_quote = FavoriteQuote.new
  end

  # GET /favorite_quotes/1/edit
  def edit
  end

  # POST /favorite_quotes
  # POST /favorite_quotes.json
  def create
    @favorite_quote = FavoriteQuote.new(favorite_quote_params)

    respond_to do |format|
      if @favorite_quote.save
        format.html { redirect_to @favorite_quote, notice: 'Favorite quote was successfully created.' }
        format.json { render action: 'show', status: :created, location: @favorite_quote }
      else
        format.html { render action: 'new' }
        format.json { render json: @favorite_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /favorite_quotes/1
  # PATCH/PUT /favorite_quotes/1.json
  def update
    respond_to do |format|
      if @favorite_quote.update(favorite_quote_params)
        format.html { redirect_to @favorite_quote, notice: 'Favorite quote was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @favorite_quote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /favorite_quotes/1
  # DELETE /favorite_quotes/1.json
  def destroy
    @favorite_quote.destroy
    respond_to do |format|
      format.html { redirect_to favorite_quotes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite_quote
      @favorite_quote = FavoriteQuote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def favorite_quote_params
      params.require(:favorite_quote).permit(:quote_id, :user_id)
    end
end
