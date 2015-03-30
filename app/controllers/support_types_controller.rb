class SupportTypesController < ApplicationController
  before_action :set_support_type, only: [:show, :edit, :update, :destroy]

  # GET /support_types
  # GET /support_types.json
  def index
    @support_types = SupportType.all
  end

  # GET /support_types/1
  # GET /support_types/1.json
  def show
  end

  # GET /support_types/new
  def new
    @support_type = SupportType.new
  end

  # GET /support_types/1/edit
  def edit
  end

  # POST /support_types
  # POST /support_types.json
  def create
    @support_type = SupportType.new(support_type_params)

    respond_to do |format|
      if @support_type.save
        format.html { redirect_to @support_type, notice: 'Support type was successfully created.' }
        format.json { render :show, status: :created, location: @support_type }
      else
        format.html { render :new }
        format.json { render json: @support_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support_types/1
  # PATCH/PUT /support_types/1.json
  def update
    respond_to do |format|
      if @support_type.update(support_type_params)
        format.html { redirect_to @support_type, notice: 'Support type was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_type }
      else
        format.html { render :edit }
        format.json { render json: @support_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support_types/1
  # DELETE /support_types/1.json
  def destroy
    @support_type.destroy
    respond_to do |format|
      format.html { redirect_to support_types_url, notice: 'Support type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_type
      @support_type = SupportType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_type_params
      params.require(:support_type).permit(:support_type_name)
    end
end
