module RMWS

  class RMWSException < StandardError
  end

  class MissingConnectionOptions < RMWSException
  end

  class NoNextToken < RMWSException
  end

  class ErrorResponse < RMWSException
  end

  class BadResponseError < RMWSException
  end
end