require 'spec_helper'

describe PagesController do

  describe "GET 'firstPage'" do
    it "returns http success" do
      get 'firstPage'
      response.should be_success
    end
  end

  describe "GET 'Womens'" do
    it "returns http success" do
      get 'Womens'
      response.should be_success
    end
  end

end
