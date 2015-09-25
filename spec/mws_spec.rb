require 'spec_helper'

describe RMWS do

  context 'connect' do
    it 'should create a RMWS::Base object' do
      RMWS.new(auth_params).class.should == RMWS::Base
    end
  end

end