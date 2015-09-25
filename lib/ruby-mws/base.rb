module RMWS

  class Base

    attr_accessor :connection

    def initialize(options={})
      @connection = RMWS::Connection.new(options)
    end

    def orders
      @orders ||= RMWS::API::Order.new(@connection)
    end

    def inventory
      @inventory ||= RMWS::API::Inventory.new(@connection)
    end

    def products
      @products ||= RMWS::API::Product.new(@connection)
    end

    def reports
      @reports ||= RMWS::API::Report.new(@connection)
    end

    def feeds
      @feeds ||= RMWS::API::Feed.new(@connection)
    end

    def sellers
      @sellers ||= RMWS::API::Seller.new(@connection)
    end


    # serves as a server ping
    def self.server_time
      RMWS::Connection.server_time
    end

  end
end