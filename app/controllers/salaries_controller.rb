class SalariesController < ApplicationController
  def index
    @salaries = Salary.all
  end
  
  def show
    @salary = Salary.find(params[:id]) 
    @salary_amount = @salary["salary_amount"]
    @result1 = (1030000 - @salary_amount)
    @result2 = (1030000 - @salary_amount)/12
  end
  
  def new
   @salaries = Salary.new
   
  end
  
  def create
    @salaries = Salary.new(salary_params)
    
    if @salaries.save
      redirect_to salary_path(@salaries)
      
    end
  end
  
  private
    def salary_params
      params.require(:salary).permit(:date, :salary_amount, :transportation_expenses).merge(user_id: current_user.id)
    end
  
end
