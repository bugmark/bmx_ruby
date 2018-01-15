=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxRuby::RebuildDateApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'RebuildDateApi' do
  before do
    # run before each test
    @instance = BmxRuby::RebuildDateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RebuildDateApi' do
    it 'should create an instance of RebuildDateApi' do
      expect(@instance).to be_instance_of(BmxRuby::RebuildDateApi)
    end
  end

  # unit tests for get_rebuild_date
  # Return the system rebuild time
  # Return the system rebuild time
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'get_rebuild_date test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
