class CategorysController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def index
    @categorys = Category.all
  end

  def show
  end

  # GET /proposals/1/edit
  def edit
  end

  # POST /proposals
  # POST /proposals.json
  def create
    @category = Category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proposals/1
  # PATCH/PUT /proposals/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'Proposal was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proposals/1
  # DELETE /proposals/1.json
  def destroy
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categorys_url, notice: 'Category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:title, :description, :parentId)
    end
end
