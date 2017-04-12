require 'spec_helper'

describe 'AnnuityCalculator' do

  describe "GET '/'" do
    it "loads startpage" do
      get '/'
      expect(last_response).to be_ok
    end

    it "displays startpage content" do
      get '/'
      expect(last_response.body).to include("Кредитные сведения:")
    end
  end

  describe "POST '/result'" do
    it "loads result page" do
      post '/result', { credit: {
                        amount: 100000, interest_rate:  3,
                        month:  6, method: 'annuity'} } 
      expect(last_response).to be_ok
    end

    it "displays content" do
      post '/result', { credit: {
                        amount: 100000, interest_rate:  3,
                        month:  6, method: 'annuity'} } 
      expect(last_response.body).to include("Аннуитетный калькулятор")
    end
  end
end