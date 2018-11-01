class ChurchNamesController < ApplicationController

  belongs_to :camp_members, class_name: "camp_member",
                            foreign_key: "id"


  before_action :set_church_name, only: [:show, :edit, :update, :destroy]

  # GET /church_names
  # GET /church_names.json
  def index
    @church_names = ChurchName.all
  end

  # GET /church_names/1
  # GET /church_names/1.json
  def show
  end

  # GET /church_names/new
  def new
    @church_name = ChurchName.new
  end

  # GET /church_names/1/edit
  def edit
  end

  # POST /church_names
  # POST /church_names.json
  def create
    @church_name = ChurchName.new(church_name_params)

    respond_to do |format|
      if @church_name.save
        format.html { redirect_to @church_name, notice: 'Church name was successfully created.' }
        format.json { render :show, status: :created, location: @church_name }
      else
        format.html { render :new }
        format.json { render json: @church_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /church_names/1
  # PATCH/PUT /church_names/1.json
  def update
    respond_to do |format|
      if @church_name.update(church_name_params)
        format.html { redirect_to @church_name, notice: 'Church name was successfully updated.' }
        format.json { render :show, status: :ok, location: @church_name }
      else
        format.html { render :edit }
        format.json { render json: @church_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /church_names/1
  # DELETE /church_names/1.json
  def destroy
    @church_name.destroy
    respond_to do |format|
      format.html { redirect_to church_names_url, notice: 'Church name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_church_name
      @church_name = ChurchName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def church_name_params
      params.require(:church_name).permit(:church_name, :pastor_name, :mens_leader)
    end
end
