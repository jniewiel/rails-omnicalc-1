class MainController < ApplicationController

  def home
    render({:template => "home"})
  end
  
  def payment_new
    render({:template => "payment_new"})
  end

  def payment_results
    @user_apr = (params.fetch("user_apr").to_f)
    @user_years = params.fetch("user_years").to_i
    @user_pv = params.fetch("user_pv").to_i

    apr = ((@user_apr / 100)/ 12)
    years = @user_years * 12
    @payment = (@user_pv * apr * (1 + apr) ** years / ((1 + apr) ** years - 1)).to_fs(:currency, {:precision => 2})

    @apr_print = @user_apr.to_fs(:percentage, {:precision => 4})
    @principal_print = @user_pv.to_fs(:currency, {:precision => 2})

    render({:template => "payment_results"})
  end

  def random_new
    render({:template => "random_new"})
  end

  def random_results
    @minimum = params.fetch("user_min").to_i
    @maximum = params.fetch("user_max").to_i
    @random_number = rand(@minimum..@maximum).to_f

    render({:template => "random_results"})
  end

  def square_new
    render({:template => "square_new"})
  end

  def square_results
    @number = params.fetch("number").to_f
    @square = (@number * @number).to_f

    render({:template => "square_results"})
  end

  def square_root_new
    render({:template => "square_root_new"})
  end

  def square_root_results
    @user_number = params.fetch("user_number").to_f
    @square_root = Math.sqrt(@user_number).to_f

    render({:template => "square_root_results"})
  end

end
