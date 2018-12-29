Aws.config.update({
  region: 'us-west-2',
  credentials: Aws::Credentials.new('REPLACE_WITH_ACCESS_KEY_ID', 'REPLACE_WITH_SECRET_ACCESS_KEY'),
})

require 'dynamoid'
Dynamoid.configure do |config|
  config.namespace = 'dynamoid_app_development' # To namespace tables created by Dynamoid from other tables you might have. Set to nil to avoid namespacing.
  config.endpoint = 'http://localhost:8000' # [Optional]. If provided, it communicates with the DB listening at the endpoint. This is useful for testing with [Amazon Local DB] (http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Tools.DynamoDBLocal.html).
end