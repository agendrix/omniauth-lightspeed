require "omniauth/strategies/oauth2"

module OmniAuth
  module Strategies
    class Lightspeed < OmniAuth::Strategies::OAuth2
      option :name, "lightspeed"

      option :client_options, { 
        site: "https://cloud.merchantos.com",
        authorize_url: "/oauth/authorize.php",
        token_url: "/oauth/access_token.php",
        # header_format: 'OAuth %s'
      }

      uid { raw_info[:accountID] }


      info do
         { :name => raw_info[:name] }
       end
       
      def callback_url
        full_host + script_name + callback_path
      end

      def build_access_token
        access_token = super
        # TODO: is there a better way to specify this?
        access_token.options[:header_format] = "OAuth %s"
        access_token
      end


      def raw_info
        @raw_info ||= begin
          account_xml = access_token.get('/API/Account').body
          account = Nokogiri::XML.parse(account_xml).css('Account:first')
          {
            accountID: account.css("accountID").text,
            name: account.css("name").text
          }
        end
      end
    end
  end
end
