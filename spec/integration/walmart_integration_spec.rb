#coding: utf-8
require 'spec_helper'

#include RSpec::Expectations

describe "Integration Testing - Validanting JSONPlaceholder" do

  before(:each) do
    @testing = QAIntegrationTest.new
    @auxiliar = QAIntegrationTest.new
  end
  
  context "Simple get - searching posts list" do

    before(:each) do
      @res = @testing.get_json 'http://jsonplaceholder.typicode.com/posts'
    end

    it "returns correct code http" do  
      expect(@testing.res_code).to eq(200)
    end

    it "returns correct list" do
      expect(@res.count).to eq(100)
    end
  end

  context "Simple get - searching 1 posts" do

    before(:each) do
      @res = @testing.get_json 'http://jsonplaceholder.typicode.com/posts/1'
    end

    it "returns correct code http" do  
      expect(@testing.res_code).to eq(200)
    end

    it "returns correct datas - userId, title and body" do
      expect(@res['userId']).to eq(1)
      expect(@res['title']).to eq('sunt aut facere repellat provident occaecati excepturi optio reprehenderit')
      expect(@res['body']).to match(/quia et suscipit\nsuscipit recusandae consequuntur/)
    end
  end

  context "Simple get - inexistent posts" do

    before(:each) do
      @res = @testing.get_json 'http://jsonplaceholder.typicode.com/posts/23232345'
    end

    it "returns correct code http" do  
      expect(@testing.res_code).to eq(404)
    end

  end

  context "Simple post - add new post" do

    before(:each) do
      param = {
                title: 'teste walmart',
                body: 'bla ble bli blo blu',
                userId: 1
              }
      @res = @testing.post_json 'http://jsonplaceholder.typicode.com/posts', param
    end

    it "returns correct code http" do  
      expect(@testing.res_code).to eq(201)
    end

    # it "verifies if it saves registry" do
    #   @aux = @auxiliar.get_json "http://jsonplaceholder.typicode.com/posts/#{@res['id']}"
    #   expect(@auxiliar.res_code).to eq(200)
    #   expect(@aux['userId']).to eq(1)
    #   expect(@aux['title']).to eq('teste walmart')
    #   expect(@aux['body']).to eq('bla ble bli blo blu')
    # end

  end

  context "Simple delete - delete existent post" do

    before(:each) do
      @res = @testing.delete_json 'http://jsonplaceholder.typicode.com/posts/1'
    end

    it "returns correct code http" do  
      expect(@testing.res_code).to eq(200)
    end

  end

  context "Simple delete - Can't delete inexistent post" do

    before(:each) do
      @res = @testing.delete_json 'http://jsonplaceholder.typicode.com/posts/1298374981273412'
    end

    it "returns correct code http" do  
      expect(@testing.res_code).to eq(404)
    end

  end  

    context "Simple update - Updates existent post" do

    before(:each) do
            param = {
                title: 'teste walmart 39',
              }
      @res = @testing.patch_json 'http://jsonplaceholder.typicode.com/posts/39', param
    end

    it "returns correct code http" do  
      expect(@testing.res_code).to eq(200)
    end

  end  

end