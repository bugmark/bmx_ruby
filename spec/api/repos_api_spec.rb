=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxApiRuby::ReposApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ReposApi' do
  before do
    # run before each test
    @instance = BmxApiRuby::ReposApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReposApi' do
    it 'should create an instance of ReposApi' do
      expect(@instance).to be_instance_of(BmxApiRuby::ReposApi)
    end
  end

  # unit tests for get_repos
  # List all repos
  # List all repos
  # @param [Hash] opts the optional parameters
  # @return [Array<RepoOverview>]
  describe 'get_repos test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_repos_uuid
  # Show repo detail
  # Show repo detail
  # @param uuid repo UUID
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :issues include issues
  # @return [RepoDetail]
  describe 'get_repos_uuid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_repos
  # Create a repo
  # Create a GitHub repo. 
  # @param name repo name
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :sync sync on create
  # @return [RepoOverview]
  describe 'post_repos test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_repos
  # Sync a repo
  # Sync a GitHub repo. 
  # @param uuid repo uuid
  # @param [Hash] opts the optional parameters
  # @return [Status]
  describe 'put_repos test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
