Clarifai::Rails.setup do |config|
  config.client_id = Rails.application.secrets.clarifai_client_id
  config.client_secret = Rails.application.secrets.clarifai_client_secret
end
