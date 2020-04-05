class MembersController < ApplicationController
  def index
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save!
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def member_params
    params.require(:member).permit(:name, :tel, :birthday, :postcode, :city, :block, :building, :secularname, :dharmaname, :deceased, :spring, :summer, :autumn, :winter)
  end
end

