=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxRuby::PositionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PositionsApi' do
  before do
    # run before each test
    @instance = BmxRuby::PositionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PositionsApi' do
    it 'should create an instance of PositionsApi' do
      expect(@instance).to be_instance_of(BmxRuby::PositionsApi)
    end
  end

  # unit tests for get_positions
  # Return all positions
  # Return all positions
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_positions test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
