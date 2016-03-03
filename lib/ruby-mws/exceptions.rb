module MWS
  class MWSException < StandardError
  end

  class MissingConnectionOptions < MWSException
  end

  class NoNextToken < MWSException
  end

  class BadResponseError < MWSException
  end

  class ErrorResponse < MWSException
  end

  class AccessDenied < ErrorResponse
  end

  class RequestThrottled < ErrorResponse
  end

  class InvalidParameterValue < ErrorResponse
  end
end
