module Meteor
  module Widget
    module BarGraph
      # You've generated a new Meteor Widget!
      #
      # Your new widget can be rendered with the following:
      #
      # <%= render_meteor_widget(::Meteor::Widget::AuraVisualize::Spec.new(...) -%>
      #   
      # This renders its partial, vendor/plugins/aura_visualize/templates/aura_visualize/_render.rhtml.
      #
      # In your partial you can get a hold of your spec object with a local call 'spec'.

      class Spec < ::Meteor::PluginSpecBase

        include MeteorWidgetPlugin
        
        attr_accessor :columns,:data,:page_div

        def initialize(options={},&block)
          super(options,&block)
          [:columns,:data,:page_div].each do |field|
            raise "set :#{field} in #{self.class}.#{current_method}; this is required" unless self.send(field)
          end
        end

        def column_data(record,column_number)
          ret = ''
          column=columns[column_number]
          
          ret += "'" if column[:type] == :string
          
          ret += record.send(column[:field]).to_s
          
          ret += "'" if column[:type] == :string

          ret
        end
        
        def max
          raise "you must override this function"
        end

        def format_data(column,row)
          type = column[:type]
          extras=(type == :string ? "'" : '') 
          
          data = row.send(row.respond_to?("#{column[:field]}_format") ? "#{column[:field]}_format" : column[:field])
          
          if type == :number
            data = data.to_i
          end

          "#{extras}#{data}#{extras}"
        end

      end
    end
  end
end
