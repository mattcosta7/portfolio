CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => Rails.application.secrets.amazon_key,                        # required
    :aws_secret_access_key  => Rails.application.secrets.amazon_secret,                        # required
    :region                 => 'us-west-2'                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = Rails.application.secrets.portfolio_s3_bucket                          # required
end
