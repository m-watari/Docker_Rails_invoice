class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :ensure_correct_user, only: [:edit, :update]

  def index
    @groups = Group.all
  end

  def show
    @group = Group.find(params[:group_id])
    @invoices = Invoice.all
    logger.debug(@group)
  end

  def new
    @group = Group.new
  end

  def create
    # group_params.group_id = SecureRandom.uuid
    @group = Group.new(group_params)
    @group.group_id = SecureRandom.uuid
    @group.owner_id = current_user.id
    if @group.save
      redirect_to groups_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @group.update(group_params)
      redirect_to groups_path
    else
      render "edit"
    end
  end

  private

  def group_params
    params.require(:group).permit(:name, :introduction, :image)
  end

  def ensure_correct_user
    @group = Group.find(params[:group_id])
    unless @group.owner_id == current_user.id
      redirect_to groups_path
    end
  end

  # DELETE /groups/1 or /groups/1.json
  def destroy
    @group.destroy
    respond_to do |format|
      format.html { redirect_to groups_url, notice: "group was successfully destroyed." }
      format.json { head :no_content }
    end
  end
end
