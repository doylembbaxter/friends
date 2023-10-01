class LinkGroupsController < ApplicationController
  before_action :set_link_group, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  before_action :correct_user, only: [:show, :edit, :update, :destroy]

  # GET /link_groups or /link_groups.json
  def index
    @link_groups = LinkGroup.all
  end

  # GET /link_groups/1 or /link_groups/1.json
  def show
    @link_group = LinkGroup.find(params[:id])
  end

  # GET /link_groups/new
  def new
    # @link_group = LinkGroup.new
    @link_group = current_user.link_groups.build
  end

  # GET /link_groups/1/edit
  def edit
  end

  # POST /link_groups or /link_groups.json
  def create
    # @link_group = LinkGroup.new(link_group_params)
    @link_group = current_user.link_groups.build(link_group_params)

    respond_to do |format|
      if @link_group.save
        format.html { redirect_to link_group_url(@link_group), notice: "Link group was successfully created." }
        format.json { render :show, status: :created, location: @link_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @link_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /link_groups/1 or /link_groups/1.json
  def update
    respond_to do |format|
      if @link_group.update(link_group_params)
        format.html { redirect_to link_group_url(@link_group), notice: "Link group was successfully updated." }
        format.json { render :show, status: :ok, location: @link_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @link_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /link_groups/1 or /link_groups/1.json
  def destroy
    @link_group.destroy

    respond_to do |format|
      format.html { redirect_to link_groups_url, notice: "Link group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @link_group = current_user.link_groups.find_by(id: params[:id])
    redirect_to link_groups_path, notice: "Not Authorized to Edit This Link Group" if @link_group.nil?
  end

  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link_group
      @link_group = LinkGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def link_group_params
      params.require(:link_group).permit(:title, :user_id, :link_group_id, :description)
    end
    
end
