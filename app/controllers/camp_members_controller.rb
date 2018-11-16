class CampMembersController < ApplicationController
  before_action :set_camp_member, only: [:show, :edit, :update, :destroy]

  # GET /camp_members
  # GET /camp_members.json
  def index
    @camp_members = CampMember.all
  end

  # GET /camp_members/1
  # GET /camp_members/1.json
  def show
  end

  # GET /camp_members/new
  def new
    @camp_member = CampMember.new
  end

  # GET /camp_members/1/edit
  def edit
  end

  # POST /camp_members
  # POST /camp_members.json
  def create
    @camp_member = CampMember.new(camp_member_params)

    respond_to do |format|
      if @camp_member.save
        format.html { redirect_to @camp_member, notice: 'Camp member was successfully created.' }
        format.json { render :show, status: :created, location: @camp_member }
      else
        format.html { render :new }
        format.json { render json: @camp_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /camp_members/1
  # PATCH/PUT /camp_members/1.json
  def update
    respond_to do |format|
      if @camp_member.update(camp_member_params)
        format.html { redirect_to @camp_member, notice: 'Camp member was successfully updated.' }
        format.json { render :show, status: :ok, location: @camp_member }
      else
        format.html { render :edit }
        format.json { render json: @camp_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /camp_members/1
  # DELETE /camp_members/1.json
  def destroy
    @camp_member.destroy
    respond_to do |format|
      format.html { redirect_to camp_members_url, notice: 'Camp member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_camp_member
      @camp_member = CampMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def camp_member_params
      params.require(:camp_member).permit(:first_name, :last_name, :street, :city, :state, :zip, :phone_number, :dob, :age, :email, :paid, :payment_type, :entered_on, :church_id)
    end
end
