class OrganizationsController < ApplicationController
  def index
    @organizations = Organization.all
  end

  def new
    @organization = Organization.new
  end

  def create
    @organization = Organization.new(organization_params)
    if @organization.save
      redirect_to @organization
    else
      render :new
    end
  end

  def edit
  end

  def show
    @organization = Organization.find(params[:id])
    @user = User.new
  end

  private

  def organization_params
    params.expect(organization: [:name])
  end
end
