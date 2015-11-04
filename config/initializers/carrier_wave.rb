if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Configuration for Amazon S3
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIX3XTY6UO53YUEPQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['hitwitter']
  end
end