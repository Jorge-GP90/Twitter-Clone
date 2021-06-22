class SwiitsController < ApplicationController
  before_action :set_swiit, only: [:show, :edit, :update, :destroy]
  def index
    @swiit = Swiit.all.order(created_at: :asc)
  end

  def new
    @swiit = Swiit.new
  end

  def create
    @swiit = Swiit.new(swiit_params)
    if params[:back]
      render :new
    else
      if @swiit.save
        redirect_to switters_path, notice: "New Swiit have been created!"
      else  
      render :new
      end
    end
  end
  
  def confirm
    @swiit = Swiit.new(swiit_params)
    render :new if @swiit.invalid?
  end

  def update
    if @swiit.update(swiit_params)
      redirect_to switters_path, notice: "have been edited the Swiit N.#{@swiit.id} from user: #{ @swiit.user }!"
    else
      render :edit
    end
  end

  def edit
  end

  def show
  end

  def destroy
    @swiit.destroy
    redirect_to switters_path, notice:"have been deleted the swiit from user: #{@swiit.id}.-#{ @swiit.user }!"
  end

  private
  def swiit_params
    params.require(:swiit).permit(:user, :content)
  end

  def set_swiit
    @swiit = Swiit.find(params[:id])
  end
end
