class PayoutsController < ApplicationController
  before_action :set_payout, only: [:show, :edit, :update, :destroy]

  # GET /payouts
  # GET /payouts.json
  def index
    @payouts = Payout.all
  end

  # GET /payouts/1
  # GET /payouts/1.json
  def show
  end

  # GET /payouts/new
  def new
    @payout = Payout.new
  end

  # GET /payouts/1/edit
  def edit
  end

  # POST /payouts
  # POST /payouts.json
  def create
    @payout = Payout.new(payout_params)

    respond_to do |format|
      if @payout.save
        format.html { redirect_to @payout, notice: 'Payout was successfully created.' }
        format.json { render :show, status: :created, location: @payout }
      else
        format.html { render :new }
        format.json { render json: @payout.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payouts/1
  # PATCH/PUT /payouts/1.json
  def update
    respond_to do |format|
      if @payout.update(payout_params)
        format.html { redirect_to @payout, notice: 'Payout was successfully updated.' }
        format.json { render :show, status: :ok, location: @payout }
      else
        format.html { render :edit }
        format.json { render json: @payout.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payouts/1
  # DELETE /payouts/1.json
  def destroy
    @payout.destroy
    respond_to do |format|
      format.html { redirect_to payouts_url, notice: 'Payout was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payout
      @payout = Payout.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payout_params
      params.require(:payout).permit(:bet_id, :amount, :rank)
    end
end
