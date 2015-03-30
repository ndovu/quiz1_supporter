class UserSupportFormsController < ApplicationController
  before_action :set_user_support_form, only: [:show, :edit, :update, :destroy]

  # GET /user_support_forms
  # GET /user_support_forms.json
  def index
    @user_support_forms = UserSupportForm.all
  end

  # GET /user_support_forms/1
  # GET /user_support_forms/1.json
  def show
  end

  # GET /user_support_forms/new
  def new
    @user_support_form = UserSupportForm.new
  end

  # GET /user_support_forms/1/edit
  def edit
  end

  # POST /user_support_forms
  # POST /user_support_forms.json
  def create
    @user_support_form = UserSupportForm.new(user_support_form_params)

    respond_to do |format|
      if @user_support_form.save
        format.html { redirect_to @user_support_form, notice: 'User support form was successfully created.' }
        format.json { render :show, status: :created, location: @user_support_form }
      else
        format.html { render :new }
        format.json { render json: @user_support_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_support_forms/1
  # PATCH/PUT /user_support_forms/1.json
  def update
    respond_to do |format|
      if @user_support_form.update(user_support_form_params)
        format.html { redirect_to @user_support_form, notice: 'User support form was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_support_form }
      else
        format.html { render :edit }
        format.json { render json: @user_support_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_support_forms/1
  # DELETE /user_support_forms/1.json
  def destroy
    @user_support_form.destroy
    respond_to do |format|
      format.html { redirect_to user_support_forms_url, notice: 'User support form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_support_form
      @user_support_form = UserSupportForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_support_form_params
      params.require(:user_support_form).permit(:name, :email, :support_type_id, :message)
    end
end
