class HomeController < ApplicationController
  expose(:company) { Company.new }

end
