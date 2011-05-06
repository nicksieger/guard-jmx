# guard-jmx

Expose Guard interactor operations via JMX. 

# Install

1. `gem install guard-jmx` or add `guard-jmx` to your `Gemfile`.
2. Add `guard 'jmx'` to your `Guardfile`.

# Why?

1. Guard normally uses signals to interact with the developer.
2. Signals don't work well on JRuby.
3. A fun and possibly even useful exercise showing how to register an
   JMX MBean with JRuby and the `jmx` gem.
