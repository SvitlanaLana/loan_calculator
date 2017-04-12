require 'sinatra/base'

configure { set :server, :puma }

class App < Sinatra::Base
  set :public_folder, 'public'
  get '/' do
    erb :index    
  end

  post '/result' do
    @calculator =
      if params['credit']['method'] == 'annuity'
        @type = "Аннуитетный калькулятор"
        AnnuityCalculator.new(amount, interest_rate, count_months)        
      else
        @type = "Стандартный калькулятор"
        ClassicCalculator.new(amount, interest_rate, count_months)
      end
    erb :result
  end

  private

  def amount
    params['credit']['amount'].to_f
  end

  def interest_rate
    params['credit']['interest_rate'].to_f / 100
  end

  def count_months
    params['credit']['month']
  end
end