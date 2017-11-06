# This file was auto-generated by lib/tasks/web.rake

module Slack
  module Web
    module Api
      module Endpoints
        module Oauth
          #
          # Exchanges a temporary OAuth code for an API token.
          #
          # @option options [Object] :client_id
          #   Issued when you created your application.
          # @option options [Object] :client_secret
          #   Issued when you created your application.
          # @option options [Object] :code
          #   The code param returned via the OAuth callback.
          # @option options [Object] :redirect_uri
          #   This must match the originally submitted URI (if one was sent).
          # @see https://api.slack.com/methods/oauth.access
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/oauth/oauth.access.json
          def oauth_access(options = {})
            throw ArgumentError.new('Required arguments :client_id missing') if options[:client_id].nil?
            throw ArgumentError.new('Required arguments :client_secret missing') if options[:client_secret].nil?
            throw ArgumentError.new('Required arguments :code missing') if options[:code].nil?
            post('oauth.access', options)
          end

          #
          # Exchanges a temporary OAuth verifier code for a workspace token.
          #
          # @option options [Object] :client_id
          #   Issued when you created your application.
          # @option options [Object] :client_secret
          #   Issued when you created your application.
          # @option options [Object] :code
          #   The code param returned via the OAuth callback.
          # @option options [Object] :redirect_uri
          #   This must match the originally submitted URI (if one was sent).
          # @option options [Object] :single_channel
          #   Request the user to add your app only to a single channel.
          # @see https://api.slack.com/methods/oauth.token
          # @see https://github.com/slack-ruby/slack-api-ref/blob/master/methods/oauth/oauth.token.json
          def oauth_token(options = {})
            throw ArgumentError.new('Required arguments :client_id missing') if options[:client_id].nil?
            throw ArgumentError.new('Required arguments :client_secret missing') if options[:client_secret].nil?
            throw ArgumentError.new('Required arguments :code missing') if options[:code].nil?
            post('oauth.token', options)
          end
        end
      end
    end
  end
end
