class TlSachesController < ApplicationController
  before_action :set_tl_sach, only: %i[ show edit update destroy ]

  # GET /tl_saches or /tl_saches.json
  def index
    @tl_saches = TlSach.all
  end

  # GET /tl_saches/1 or /tl_saches/1.json
  def show
  end

  # GET /tl_saches/new
  def new
    @tl_sach = TlSach.new
  end

  # GET /tl_saches/1/edit
  def edit
  end

  # POST /tl_saches or /tl_saches.json
  def create
    @tl_sach = TlSach.new(tl_sach_params)

    respond_to do |format|
      if @tl_sach.save
        format.html { redirect_to @tl_sach, notice: "Tl sach was successfully created." }
        format.json { render :show, status: :created, location: @tl_sach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tl_sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tl_saches/1 or /tl_saches/1.json
  def update
    respond_to do |format|
      if @tl_sach.update(tl_sach_params)
        format.html { redirect_to @tl_sach, notice: "Tl sach was successfully updated." }
        format.json { render :show, status: :ok, location: @tl_sach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tl_sach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tl_saches/1 or /tl_saches/1.json
  def destroy
    @tl_sach.destroy
    respond_to do |format|
      format.html { redirect_to tl_saches_url, notice: "Tl sach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tl_sach
      @tl_sach = TlSach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tl_sach_params
      params.require(:tl_sach).permit(:matheloai, :tentheloai)
    end
end
