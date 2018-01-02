module Slack
  module Web
    module Api
      class Error < ::Faraday::ClientError
        attr_reader :response

        def initialize(message, response = nil)
          @response = response
          super message
        end
      end
    end
  end
end
