module RMWS

  class Connection

    DEFAULT_HOST = "mws.amazonservices.com"

    def initialize(options={})
      @public_attrs = [:aws_access_key_id, :seller_id, :marketplace_id, :host]
      @private_attrs = [:secret_access_key]

      if options[:mws_auth_token].nil?
        # warn MissingConnectionOptions, "mws_auth_token will be required after March 31, 2015"
      else
        @public_attrs.push(:mws_auth_token)
      end

      attrs.each do |a|
        self.class.send(:attr_reader, a)
        instance_variable_set("@#{a}", options[a])
      end

      @host ||= DEFAULT_HOST

      attrs.each { |a| raise MissingConnectionOptions, ":#{a} is required" if instance_variable_get("@#{a}").nil?}
    end

    def attrs
      @public_attrs + @private_attrs
    end

    # an attempt to hide sensitive login credentials in logs, just being paranoid
    def inspect
      "#<RMWS::Connection:#{object_id}>"
    end

    def server_time
      self.class.server_time @host
    end

    def to_hash
      hsh = {}
      attrs.each { |a| hsh[a] = instance_variable_get("@#{a}")}
      hsh
    end

    # No connection needs to be initialized for this call
    def self.server_time(host=DEFAULT_HOST)
      response = HTTParty.get("https://#{host}")
      Time.parse(response['PingResponse']['Timestamp']['timestamp'])
    end
  end

end
