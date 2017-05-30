require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class Lightspeed < OmniAuth::Strategies::OAuth2
      option :name, "lightspeed"

      option :client_options, {
        site: "https://cloud.merchantos.com",
        authorize_url: "/oauth/authorize.php",
        token_url: "/oauth/access_token.php"
      }

      uid { raw_info[:accountID] }

      info do
        { :name => raw_info[:name] }
      end

      def callback_url
        full_host + script_name + callback_path
      end

      def raw_info
        @raw_info ||= access_token.get('/API/Account.json').parsed["Account"]
      end
    end
  end
end
