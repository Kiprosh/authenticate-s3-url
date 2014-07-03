require 'spec_helper'

# describe  do
  describe AuthenticateS3Url::Configuration do
    describe '#initialize' do
      before do
        AuthenticateS3Url.configure do |config|
          config.aws_access_key_id     = 'access_key'
          config.aws_secret_access_key = 'secret_key'
          config.s3_directory          = 'amazon'
        end
      end

      let(:config) { AuthenticateS3Url.configuration }

      it 'initialises aws keys' do
        expect(config.aws_access_key_id).to eq('access_key')
        expect(config.aws_secret_access_key).to eq('secret_key')
      end

      it 'initialize s3_directory' do
        expect(config.s3_directory).to eq('amazon')
      end
    end
  end
# end

