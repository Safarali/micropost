if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAI7CUZI7VVDQA5RCA'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['hitwitter']
  end
end