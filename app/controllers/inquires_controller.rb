class InquiresController < ApplicationController
  require 'pry-byebug'
  before_action :set_inquire, only: [:show, :update, :destroy]

  # GET /inquires
  def index
    @inquires = Inquire.all

    render json: @inquires
  end

  # GET /inquires/1
  def show
    render json: @inquire
  end

  # POST /inquires
  def create
    @inquire = Inquire.new(inquire_params)

    if @inquire.save
      render json: @inquire, status: :created, location: @inquire
    else
      render json: @inquire.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /inquires/1
  def update
    if @inquire.update(inquire_params)
      render json: @inquire
    else
      render json: @inquire.errors, status: :unprocessable_entity
    end
  end

  # DELETE /inquires/1
  def destroy
    @inquire.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inquire
      @inquire = Inquire.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def inquire_params
      params.require(:inquire).permit(:name, :email, :text)
    end
end
