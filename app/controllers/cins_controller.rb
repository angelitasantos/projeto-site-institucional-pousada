class CinsController < ApplicationController
  before_action :set_cin, only: %i[ show edit update destroy ]

  layout 'panel'
  # GET /cins or /cins.json
  def index
    @cins = Cin.all.order('code ASC')
  end

  # GET /cins/1 or /cins/1.json
  def show
  end

  # GET /cins/new
  def new
    @cin = Cin.new
  end

  # GET /cins/1/edit
  def edit
  end

  # POST /cins or /cins.json
  def create
    @cin = Cin.new(cin_params)

    respond_to do |format|
      if @cin.save
        format.html { redirect_to @cin, notice: "Cin was successfully created." }
        format.json { render :show, status: :created, location: @cin }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cins/1 or /cins/1.json
  def update
    respond_to do |format|
      if @cin.update(cin_params)
        format.html { redirect_to @cin, notice: "Cin was successfully updated." }
        format.json { render :show, status: :ok, location: @cin }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cins/1 or /cins/1.json
  def destroy
    @cin.destroy
    respond_to do |format|
      format.html { redirect_to cins_url, notice: "Cin was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cin
      @cin = Cin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cin_params
      params.require(:cin).permit(:code, :description, :status)
    end
end
