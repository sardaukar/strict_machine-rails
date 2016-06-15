module StrictMachine
  module MountStateMachine
    ClassMethods.prepend(StrictMachine::Rails::ClassMethods)
    InstanceMethods.prepend(StrictMachine::Rails::ActiveRecordPersistence)
  end
end

ActiveRecord::Base.send :include, StrictMachine::MountStateMachine
