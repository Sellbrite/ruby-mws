require 'spec_helper'

describe RMWS::Base do

  it "should connect and get a timestamp" do
    RMWS::Base.server_time.class.should == Time
  end

  context 'initialize' do
    it "should create a connection object" do
      mws = RMWS::Base.new(auth_params)
      mws.should be
      mws.connection.should be
      mws.connection.class.should == RMWS::Connection
    end
  end

end