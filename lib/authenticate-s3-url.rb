require 'active_model'
require 'authenticate-s3-url/base'
require 'authenticate-s3-url/configuration'
require 'authenticate-s3-url/version'


module AuthenticateS3Url
  class << self
    attr_writer :configuration

    def configure(&block)
      yield(configuration)
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end
