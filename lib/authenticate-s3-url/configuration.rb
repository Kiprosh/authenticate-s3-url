require 'active_support'

module AuthenticateS3Url
  class Configuration
    include ActiveModel::Validations

    class Invalid < StandardError; end

    attr_accessor :aws_access_key_id, :aws_secret_access_key
    attr_accessor :expire_after
    attr_accessor :s3_directory         # e.g. 'the-bucket-name'
    attr_accessor :s3_region            # e.g. 'eu-west-1'
    attr_accessor :should_expire

    validates :aws_access_key_id,     presence: true
    validates :aws_secret_access_key, presence: true
    validates :expire_after,          presence: true, if: :should_expire?
    validates :s3_directory,          presence: true

    def initialize
      @expire_after = 30
    end
  end
end
