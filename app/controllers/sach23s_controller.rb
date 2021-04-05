class Sach23sController < ApplicationController
  before_action :set_sach23, only: %i[ show edit update destroy ]

  # GET /sach23s or /sach23s.json
  def index
    @sach23s = Sach23.all
  end

  # GET /sach23s/1 or /sach23s/1.json
  def show
  end

  # GET /sach23s/new
  def new
    @sach23 = Sach23.new
  end

  # GET /sach23s/1/edit
  def edit
  end

  # POST /sach23s or /sach23s.json
  def create
    @sach23 = Sach23.new(sach23_params)

    respond_to do |format|
      if @sach23.save
        format.html { redirect_to @sach23, notice: "Sach23 was successfully created." }
        format.json { render :show, status: :created, location: @sach23 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sach23.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sach23s/1 or /sach23s/1.json
  def update
    respond_to do |format|
      if @sach23.update(sach23_params)
        format.html { redirect_to @sach23, notice: "Sach23 was successfully updated." }
        format.json { render :show, status: :ok, location: @sach23 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sach23.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sach23s/1 or /sach23s/1.json
  def destroy
    @sach23.destroy
    respond_to do |format|
      format.html { redirect_to sach23s_url, notice: "Sach23 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sach23
      @sach23 = Sach23.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sach23_params
      params.require(:sach23).permit(:ma_tacgia, :ten_tacgia, :website, :ghichu)
    end
end
