module MWS
  module API

    class Seller < Base

      def_request [:get_auth_token],
        :verb => :get,
        :uri => '/Sellers/2011-07-01',
        :version => '2011-07-01'

    end

  end
end
