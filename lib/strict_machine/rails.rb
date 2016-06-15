require "active_record"
require "strict_machine"

module StrictMachine
  module Rails
    VERSION = "0.1.2".freeze
  end
end

require_relative "rails/class_methods"
require_relative "rails/active_record_persistence"

require_relative "rails/inject"
