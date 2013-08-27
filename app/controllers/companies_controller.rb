class CompaniesController < ApplicationController
  expose(:company, attributes: :company_params)
  expose(:companies) { Company.all }

  def create
    if company.save
      redirect_to success_companies_path 
    else
      redirect_to new_company_path, flash: { error: "Please enter your email address." }
    end
  end

  private

  def company_params
    params.require(:company).permit!
  end


end
