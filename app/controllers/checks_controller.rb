class ChecksController < ApplicationController
  
  def new
    @check = Check.new
  end

  def index
    @checks = Check.all
    checks = @checks
    @mychecks = current_user.checks
  end

  def create
    @check = Check.new(check_params)
    if @check.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @check = Check.find(params[:id])
    redirect_to action: :index if @check.user_id != current_user.id 
  end

  def update
    @check = Check.find(params[:id])
    if @check.update(check_params)
      redirect_to checks_path
    else
      render :index
    end
  end

  def show
    @check = Check.find(params[:id])
  end

  private
  def check_params
    params.require(:check).permit(:title, :item1, :item2, :item3, :item4, :item5, :item6, :item7, :item8, :item9, :item10, :item11, :item12, :item13, :item14, :item15, :item16, :item17, :item18, :item19, :item20).merge(user_id: current_user.id)
  end

end
