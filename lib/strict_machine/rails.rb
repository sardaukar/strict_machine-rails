require "active_record"
require "strict_machine"

module StrictMachine
  module Rails
    VERSION = "0.1.0".freeze
  end
end

ActiveRecord::Base.send :include, StrictMachine::MountStateMachine
