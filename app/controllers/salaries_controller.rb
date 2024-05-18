class SalariesController < ApplicationController
  def index
    @salaries = Salary.all
  end
  
  def show
    @salary = Salary.find(params[:id]) 
    @salary_amount = @salary.salary_amount
    @result1 = (1030000 - @salary_amount)
    @result2 = (1030000 - @salary_amount)/12
  end
  
  def new
   @salary = Salary.new
   
  end
  
  def create
    @salary = Salary.new(salary_params)
    
    if @salary.save
      redirect_to salary_path(@salary)
      
    end
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
    redirect_to salaries_path, notice: 'Salary was successfully destroyed.'
  end
  
  private
    def salary_params
      params.require(:salary).permit(:date, :salary_amount, :transportation_expenses).merge(user_id: current_user.id)
    end
  
end
