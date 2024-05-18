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
  
  def update
    @salary = Salary.find(params[:id])
    if @salary.update(salary_params)
      redirect_to @salary, notice: 'Salary was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @salary = Salary.find(params[:id])
    @salary.destroy
    redirect_to salary_checks_path, notice: 'Salary was successfully destroyed.'
  end
end
