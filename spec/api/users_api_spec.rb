=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxApiRuby::UsersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UsersApi' do
  before do
    # run before each test
    @instance = BmxApiRuby::UsersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UsersApi' do
    it 'should create an instance of UsersApi' do
      expect(@instance).to be_instance_of(BmxApiRuby::UsersApi)
    end
  end

  # unit tests for get_users
  # List all user ids
  # List all user ids
  # @param [Hash] opts the optional parameters
  # @option opts [String] :with_email email filter
  # @return [Array<UserIds>]
  describe 'get_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users_detail
  # List all user details
  # List all user details
  # @param [Hash] opts the optional parameters
  # @option opts [String] :with_email email filter
  # @return [Array<UserDetail>]
  describe 'get_users_detail test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_users_uuid
  # Show details for one user
  # Show details for one user
  # @param uuid user uuid
  # @param [Hash] opts the optional parameters
  # @option opts [BOOLEAN] :offers include open offers
  # @option opts [BOOLEAN] :positions include open positions
  # @return [UserDetail]
  describe 'get_users_uuid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_users
  # Create a user
  # Create a user.  Supply an optional opening balance.  (Default 0.0) 
  # @param usermail user email
  # @param password user password
  # @param [Hash] opts the optional parameters
  # @option opts [Float] :balance opening balance
  # @return [UserIds]
  describe 'post_users test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_users_uuid_deposit
  # Deposit funds
  # Deposit funds
  # @param amount 
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Status]
  describe 'put_users_uuid_deposit test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for put_users_uuid_withdraw
  # Withdraw funds
  # Withdraw funds
  # @param amount 
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [Status]
  describe 'put_users_uuid_withdraw test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
