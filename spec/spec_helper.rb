
$:<< '../lib'
require 'java'

require 'rspec'

require 'shoes'

require 'shoes/swt_constants'
include SwtConstants

require 'mock_helpers'
include MockHelpers

Dir[File.expand_path('/../spec/support/**/*.rb')].each do |path|
  require path
end
