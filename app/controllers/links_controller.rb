class LinksController < ApplicationController
  before_action :set_link, except: [:new, :create]
  before_action :set_link_group

  def show
  end

  # GET /links or /links.json
  def index
    @links = Link.all
  end

  # GET /links/new
  def new
    @link = @link_group.links.build
  
  end

  # GET /links/1/edit
  def edit
  end

  # POST /links or /links.json
  def create
    @link = @link_group.links.build(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link_group, notice: "Link was successfully created." }
        format.json { render :show, status: :created, location: link_group_link_url(@link_group, @link) }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /links/1 or /links/1.json
  def update

    respond_to do |format|
      if @link.update(link_params)
        format.html { redirect_to @link_group, notice: "Link was successfully updated." }
        format.json { render :show, status: :ok, location: @link }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /links/1 or /links/1.json
  def destroy
    @link.destroy

    respond_to do |format|
      format.html { redirect_to @link_group, notice: "Link was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_link
      @link = Link.find(params[:id])
    end

    def set_link_group
      @link_group = LinkGroup.find(params[:link_group_id])
    end

    # Only allow a list of trusted parameters through.
    def link_params
      params.require(:link).permit(:title, :url, :description, :link_group_id)
    end
end
