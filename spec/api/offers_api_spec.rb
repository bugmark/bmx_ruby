=begin
#Bugmark API

#all calls require BASIC AUTH

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BmxApiRuby::OffersApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'OffersApi' do
  before do
    # run before each test
    @instance = BmxApiRuby::OffersApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OffersApi' do
    it 'should create an instance of OffersApi' do
      expect(@instance).to be_instance_of(BmxApiRuby::OffersApi)
    end
  end

  # unit tests for get_offers
  # List all offers
  # List all offers
  # @param [Hash] opts the optional parameters
  # @option opts [String] :with_type type filter
  # @option opts [String] :with_status status filter
  # @option opts [Integer] :limit limit
  # @return [Array<OfferOverview>]
  describe 'get_offers test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_offers_uuid
  # Show offer detail
  # Show offer detail
  # @param uuid 
  # @param [Hash] opts the optional parameters
  # @return [OfferDetail]
  describe 'get_offers_uuid test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for post_offers_buy
  # Create a buy offer
  # Create a buy offer
  # @param side fixed or unfixed
  # @param volume number of positions
  # @param price between 0.0 and 1.0
  # @param issue issue UUID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :maturation YYMMDD_HHMM (default now + 1.week)
  # @option opts [String] :expiration YYMMDD_HHMM (default now + 1.day)
  # @option opts [BOOLEAN] :poolable poolable? (default false)
  # @option opts [BOOLEAN] :aon all-or-none? (default false)
  # @return [OfferCreated]
  describe 'post_offers_buy test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
