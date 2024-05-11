class SalaryChecksController < ApplicationController
  def index
    @salaries = Salary.all
  end

  def show
    @salary = Salary.find(params[:id])
  end

  def edit
    @salary = Salary.find(params[:id])
  end

  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy
    redirect_to salary_checks_path, notice: 'Salary was successfully destroyed.'
  end
end
