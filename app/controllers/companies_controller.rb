class CompaniesController < ApplicationController
  before_action :set_company, except: [:index, :create, :new]

  def index
    @companies = Company.includes(:owner).all
  end

  def new
    @company = Company.new
  end

  def show
  end

  def create
    @company = Company.new(company_params)
    if @company.save
      redirect_to companies_path, notice: "Saved"
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @company.update(company_params)
      redirect_to companies_path, notice: "Changes Saved"
    else
      render :edit
    end
  end

  private
    def company_params
      params.require(:company).permit(
        :name,
        :legal_name,
        :description,
        :zip_code,
        :phone,
        :email,
        :owner_id,
        services: [],
        departments_attributes: [[:id, :description,:phone, :name, :_destroy]]

      )
    end

    def set_company
      @company = Company.find(params[:id])
    end
end
