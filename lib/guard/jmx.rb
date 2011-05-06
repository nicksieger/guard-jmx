require 'jmx'
require 'guard/interactor'

module Guard
  class JMX < Guard
    class MBean < RubyDynamicMBean
      include ::Guard::Interactor

      operation "Runs all the guards in the project"
      returns :void
      def run_all
        begin
          super
        rescue Exception => e
          @thread.raise(e)
        end
      end

      operation "Resets all the guards"
      returns :void
      def reset
        begin
          super
        rescue Exception => e
          @thread.raise(e)
        end
      end

      operation "Stops Guard"
      returns :void
      def stop
        begin
          super
        rescue Exception => e
          @thread.raise(e)
        end
      end
    end

    def initialize(watchers=[], options={})
      @bean = MBean.new "guard.MBean", "Control Guard via JMX"
      @server = ::JMX::MBeanServer.new
      @server.register_mbean @bean, "guard:type=MBean"
      @thread = Thread.current
    end
  end
end
