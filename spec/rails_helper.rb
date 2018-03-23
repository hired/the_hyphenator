require 'rails/all'

require 'support/rails_app/config/environment'

ActiveRecord::Migration.maintain_test_schema!

ActiveRecord::Schema.verbose = false

require 'spec_helper'
