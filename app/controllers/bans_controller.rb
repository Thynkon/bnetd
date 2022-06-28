class BansController < ApplicationController
  before_action :set_ban, only: %i[ show edit update destroy ]

  # GET /bans or /bans.json
  def index
    @bans = Ban.all
  end

  # GET /bans/1 or /bans/1.json
  def show
  end

  # GET /bans/new
  def new
    @ban = Ban.new
  end

  # GET /bans/1/edit
  def edit
  end

  # POST /bans or /bans.json
  def create
    @ban = Ban.new(ban_params)

    respond_to do |format|
      if @ban.save
        format.html { redirect_to ban_url(@ban), notice: "Ban was successfully created." }
        format.json { render :show, status: :created, location: @ban }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ban.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bans/1 or /bans/1.json
  def update
    respond_to do |format|
      if @ban.update(ban_params)
        format.html { redirect_to ban_url(@ban), notice: "Ban was successfully updated." }
        format.json { render :show, status: :ok, location: @ban }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ban.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bans/1 or /bans/1.json
  def destroy
    @ban.destroy

    respond_to do |format|
      format.html { redirect_to bans_url, notice: "Ban was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ban
      @ban = Ban.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ban_params
      params.require(:ban).permit(:ip, :country, :ts, :port, :jail, :username, :uri, :method, :user_agent)
    end
end
