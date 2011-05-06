require 'jmx'
require 'guard/interactor'

module Guard
  class JMX < Guard
    class MBean < RubyDynamicMBean
      include ::Guard::Interactor

      operation "Runs all the guards in the project"
      returns :void
      method_added :run_all

      operation "Resets all the guards"
      returns :void
      method_added :reset

      operation "Stops Guard"
      returns :void
      method_added :stop
    end

    def initialize(watchers=[], options={})
      @bean = MBean.new "guard.MBean", "Control Guard via JMX"
      @server = ::JMX::MBeanServer.new
      @server.register_mbean @bean, "guard:type=MBean"
    end
  end
end
