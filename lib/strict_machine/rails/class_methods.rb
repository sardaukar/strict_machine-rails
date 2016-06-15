module StrictMachine
  module Rails
    module ClassMethods
      def mount_state_machine(klass, options = {})
        before_save :write_initial_state

        super
      end
    end
  end
end
