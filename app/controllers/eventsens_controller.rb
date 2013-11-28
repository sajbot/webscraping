class EventsensController < ApplicationController
  before_action :set_eventsen, only: [:show, :edit, :update, :destroy]

  # GET /eventsens
  # GET /eventsens.json
  def index
    @eventsens = Eventsen.all
  end

  # GET /eventsens/1
  # GET /eventsens/1.json
  def show
  end

  # GET /eventsens/new
  def new
    @eventsen = Eventsen.new
  end

  # GET /eventsens/1/edit
  def edit
  end

  # POST /eventsens
  # POST /eventsens.json
  def create
    @eventsen = Eventsen.new(eventsen_params)

    respond_to do |format|
      if @eventsen.save
        format.html { redirect_to @eventsen, notice: 'Eventsen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @eventsen }
      else
        format.html { render action: 'new' }
        format.json { render json: @eventsen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eventsens/1
  # PATCH/PUT /eventsens/1.json
  def update
    respond_to do |format|
      if @eventsen.update(eventsen_params)
        format.html { redirect_to @eventsen, notice: 'Eventsen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @eventsen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eventsens/1
  # DELETE /eventsens/1.json
  def destroy
    @eventsen.destroy
    respond_to do |format|
      format.html { redirect_to eventsens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eventsen
      @eventsen = Eventsen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eventsen_params
      params.require(:eventsen).permit(:event, :city, :number)
    end
end
