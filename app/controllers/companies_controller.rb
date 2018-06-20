class CompaniesController < ApplicationController
  before_action :set_company, except: [:index, :new, :create]
  before_action :authenticate_user!
  
  def index
    @companies = Company.all
  end

  def new
    @company = current_user.companies.build
  end

  def create
    @company = current_user.companies.build(company_params)
    
    if @company.save
      redirect_to funding_company_path(@company), notice: "Your company was created successfully! We will be in touch soon!"
    else
      flash[:alert] = "Oops, something went wrong."
      render :new
    end
  end
  
  def show
  end

  def funding
  end

  def info
  end

  def photo_upload
  end

  def contact
  end

  def update
    if @company.update(company_params)
      flash[:notice] = "Your changes were saved."
    else
      flash[:alert] = "Oops, something went wrong."
    end
    redirect_back(fallback_location: request.referer)
  end
  
  private
  
    def set_company
      @company = Company.find(params[:id])
    end
  
    def company_params
      params.require(:company).permit(:amount, :financing_type, :financing_time, :company_name, :company_phone, :trade_name, :company_address, :company_suite, :company_city, :company_state, :company_zip, :tax_id, :entity_type, :annual_revenue, :sell_to)
    end
end
