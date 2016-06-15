module StrictMachine
  module Rails
    module ActiveRecordPersistence
      def current_state_attr_value
        read_attribute state_machine_attr_name
      end

      def write_initial_state
        if current_state_attr_value.nil?
          write_state(definition.initial_state_name, true)
        end
      end

      def write_state(value, soft = false)
        if soft
          write_attribute state_machine_attr_name, value
        else
          update_attribute state_machine_attr_name, value
        end
      end

      private

      def state_machine_attr_name
        self.class.strict_machine_attr
      end
    end
  end
end
