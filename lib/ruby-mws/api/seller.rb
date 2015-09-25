module RMWS
  module API

    class Seller < Base

      def_request [:get_auth_token],
        :verb => :get,
        :uri => '/Sellers/2011-07-01',
        :version => '2011-07-01'

      def_request [:list_marketplace_participations],
        :verb => :post,
        :uri => '/Sellers/2011-07-01',
        :version => '2011-07-01'

    end

  end
end
