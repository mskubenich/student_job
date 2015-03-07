class VacantionsController < ApplicationController
  before_action :set_vacantions, only: [:show, :edit, :update, :destroy]

  def index
    @vacantions = Vacantion.all
  end

  def show
  end

  # GET /vacantions/1/edit
  def edit
  end

  # POST /vacantions
  # POST /vacantions.json
  def create
    @vacantion = Vacantion.new(vacantion_params)

    respond_to do |format|
      if @vacantion.save
        format.html { redirect_to @vacantion, notice: 'Vacantion was successfully created.' }
        format.json { render :show, status: :created, location: @vacantion }
      else
        format.html { render :new }
        format.json { render json: @vacantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vacantions/1
  # PATCH/PUT /vacantions/1.json
  def update
    respond_to do |format|
      if @vacantion.update(vacantion_params)
        format.html { redirect_to @vacantion, notice: 'Vacantion was successfully updated.' }
        format.json { render :show, status: :ok, location: @vacantion }
      else
        format.html { render :edit }
        format.json { render json: @vacantion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vacantions/1
  # DELETE /vacantions/1.json
  def destroy
    @vacantion.destroy
    respond_to do |format|
      format.html { redirect_to vacantions_url, notice: 'Vacantoin was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vacantions
      @vacantion = Vacantion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vacantion_params
      params.require(:vacantion).permit(:title, :description)
    end
end
