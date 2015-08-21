# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

Amazon::Ecs.options = { #api key .
    :associate_tag => 'ghetty2200-22',
    :AWS_access_key_id => 'AKIAJCY6CRKFVKHL7KHQ',
    :AWS_secret_key => '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', 
}
