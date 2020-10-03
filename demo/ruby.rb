module ExampleModule
  class ExampleClass::ScopeResolution < NewScope::Operator
    include Another::Scoped::Module

    def initialize(options)
      @@class_var = options[:class]
      @instance_var = options[:instance]

      config.data = []
      config.actions = []

      new.run
    end

    def method_examples
      method_with_args(:arg)
      method_no_args
      # method defined on base ruby object
      method(:array_access)
    end

    def array_access
      array = ([1, 2] << 3).uniq
      array[1]
      array[dynamic_key]
    end

    def blocks
      yield if block_given?
      [1].each do |num|
        do_something
      end

      [2].each { |num| do_something }
      lambda { do_something }
      ->(arg1) { do_something}
      Proc.new { |arg| do_something }
    end

    def hash_access
      symbol_hash = {
        key1: 'info',
        key2: 'info',
      }.compact

      string_hash = {
        method_key => 'info',
        'key2' => 'info',
      }

      symbol_hash[:key1]
      string_hash['key2']
    end

    def output
      puts 'Output here'
      pp 'Output here'
    end

    def self.class_method
      return "I am a class method!"
    end

    class << self
      def another_private_method(arg1, default_arg = {}, **args, &block); end
    end

    private

    def other_method(*args)
      puts "doing other stuff #{42}"
    end

    def self.private
      [1, 2, 3].each do |item|
        puts item
      end
    end

    private_class_method :private

    private

    def user_params
      params.require(:user).permit(:username, :email, :password)
      params.pluck(:user)
    end
  end
end

ExampleModule::ExampleClass::ScopeResolution
example_instance = ExampleModule::ExampleClass::ScopeResolution.new(:arg)

example_instance.method(:arg) do
  puts 'yielding in block!'
end