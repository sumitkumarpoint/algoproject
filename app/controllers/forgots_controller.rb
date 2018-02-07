class ForgotsController < ApplicationController
  before_action :set_forgot, only: [:show, :edit, :update, :destroy]

  # GET /forgots
  # GET /forgots.json
  def index
    @forgots = Forgot.all
  end

  # GET /forgots/1
  # GET /forgots/1.json
  def show
  end

  # GET /forgots/new
  def new
    @forgot = Forgot.new
  end

  # GET /forgots/1/edit
  def edit
  end

  # POST /forgots
  # POST /forgots.json
  def create
    @forgot = Forgot.new(forgot_params)

    respond_to do |format|
      if @forgot.save
        format.html { redirect_to @forgot, notice: 'Forgot was successfully created.' }
        format.json { render :show, status: :created, location: @forgot }
      else
        format.html { render :new }
        format.json { render json: @forgot.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /forgots/1
  # PATCH/PUT /forgots/1.json
  def update
    respond_to do |format|
      if @forgot.update(forgot_params)
        format.html { redirect_to @forgot, notice: 'Forgot was successfully updated.' }
        format.json { render :show, status: :ok, location: @forgot }
      else
        format.html { render :edit }
        format.json { render json: @forgot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /forgots/1
  # DELETE /forgots/1.json
  def destroy
    @forgot.destroy
    respond_to do |format|
      format.html { redirect_to forgots_url, notice: 'Forgot was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_forgot
      @forgot = Forgot.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def forgot_params
      params.require(:forgot).permit(:email)
    end
end
