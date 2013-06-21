class Admin::CompaniesController < AdminController
  expose(:companies) { Company.all }


end
