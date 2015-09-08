module Concerns
  module MyAttributes
    extend ActiveSupport::Concern

    module ClassMethods
      def my_attr(name, val, model: nil)
        define_method("#{name}=") { val }
        define_method(name) { val }
        if model
          define_method("#{name}_attributes=") do
            val.each do |i|
              send "#{name}=(#{model.new i})"
            end
          end
          define_method("#{name}_attributes") { send name }
        end
      end
    end
  end
end