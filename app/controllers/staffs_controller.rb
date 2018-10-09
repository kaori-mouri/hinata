class StaffsController < ApplicationController
  def index
    @staffs = Staff.all
  end
  
  def show
    @staff = Staff.find_by(id: params[:id])
  end
  
  def new
    @staff = Staff.new
  end
  
  def create
    logger.debug("-------------------- name: #{params[:name]}, staffs_attr: #{params[:staffs_attr]}")
    @staff = Staff.new(name: params[:name], staffs_attr: params[:staffs_attr])
    if @staff.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to("/staffs/#{@staff.id}")
    else
      render("/staffs/new")
    end
  end
  
  def edit
    @staff = Staff.find_by(id: params[:id])
  end
  
  def update
    @staff = Staff.find_by(id: params[:id])
    @staff.name = params[:name]
    @staff.staffs_attr = params[:staffs_attr]
    if @staff.save
      flash[:notice] = "スタッフ情報を編集しました"
      redirect_to("/staffs/#{@staff.id}")
    else
      render("staffs/edit")
    end
  end

end