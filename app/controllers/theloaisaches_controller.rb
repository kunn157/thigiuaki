class TheloaisachesController < ApplicationController
  before_action :set_theloaisach, only: %i[ show edit update destroy ]

  # GET /theloaisaches or /theloaisaches.json
  def index
    @theloaisaches = Theloaisach.all
  end

  # GET /theloaisaches/1 or /theloaisaches/1.json
  def show
  end

  # GET /theloaisaches/new
  def new
    @theloaisach = Theloaisach.new
  end

  # GET /theloaisaches/1/edit
  def edit
  end

  # POST /theloaisaches or /theloaisaches.json
  def create
    @theloaisach = Theloaisach.new(theloaisach_params)

    respond_to do |format|
      if @theloaisach.save
        format.html { redirect_to @theloaisach, notice: "Theloaisach was successfully created." }
        format.json { render :show, status: :created, location: @theloaisach }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @theloaisach.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /theloaisaches/1 or /theloaisaches/1.json
  def update
    respond_to do |format|
      if @theloaisach.update(theloaisach_params)
        format.html { redirect_to @theloaisach, notice: "Theloaisach was successfully updated." }
        format.json { render :show, status: :ok, location: @theloaisach }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @theloaisach.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /theloaisaches/1 or /theloaisaches/1.json
  def destroy
    @theloaisach.destroy
    respond_to do |format|
      format.html { redirect_to theloaisaches_url, notice: "Theloaisach was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theloaisach
      @theloaisach = Theloaisach.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def theloaisach_params
      params.require(:theloaisach).permit(:ma_sach, :ten_sach, :mtg, :mtl, :maNXB, :nxb)
    end
end
