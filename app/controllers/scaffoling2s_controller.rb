class Scaffoling2sController < ApplicationController
  before_action :set_scaffoling2, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]
  before_action :correct_user, only:[:edit,:update,:destroy]
  # GET /scaffoling2s or /scaffoling2s.json
  def index
    @scaffoling2s = Scaffoling2.all
  end

  # GET /scaffoling2s/1 or /scaffoling2s/1.json
  def show
  end

  # GET /scaffoling2s/new
  def new
    #@scaffoling2 = Scaffoling2.new
    @scaffoling2 = current_user.Scaffoling2.build
  end

  # GET /scaffoling2s/1/edit
  def edit
  end

  # POST /scaffoling2s or /scaffoling2s.json
  def create
    #@scaffoling2 = Scaffoling2.new(scaffoling2_params)
    @scaffoling2 = current_user.Scaffoling2.build(scaffoling2_params)
    respond_to do |format|
      if @scaffoling2.save
        format.html { redirect_to scaffoling2_url(@scaffoling2), notice: "Scaffoling2 was successfully created." }
        format.json { render :show, status: :created, location: @scaffoling2 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @scaffoling2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffoling2s/1 or /scaffoling2s/1.json
  def update
    respond_to do |format|
      if @scaffoling2.update(scaffoling2_params)
        format.html { redirect_to scaffoling2_url(@scaffoling2), notice: "Scaffoling2 was successfully updated." }
        format.json { render :show, status: :ok, location: @scaffoling2 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @scaffoling2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffoling2s/1 or /scaffoling2s/1.json
  def destroy
    @scaffoling2.destroy

    respond_to do |format|
      format.html { redirect_to scaffoling2s_url, notice: "Scaffoling2 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @scaffolings = current_user.Scaffoling2.find_by(id:params[:id])
    redirect_to scaffoling2_path, notice:"Not Authorized To Edit This Friend" if @scaffoling2.nil?
  end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffoling2
      @scaffoling2 = Scaffoling2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scaffoling2_params
      params.require(:scaffoling2).permit(:first_name, :last_name, :email, :phone, :twitter, :user_id)
    end
end
