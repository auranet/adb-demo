module Meteor
  module Widget
    module Borderbox
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
        
        attr_accessor :dom_id
        attr_accessor :title
        attr_accessor :hideable # a list of divs that will get the hide event (or show)

        def initialize(options={},&block)
          super(options,&block)
          [:title,:dom_id].each do |field|
            raise "set :#{field} in #{self.class}.#{current_method}; this is required" unless self.send(field)
          end
        end

        def _hide_text(action)
          ret = ''
          if hideable 
            hideable.each do |hide|
              ret += "Element.#{action}('#{hide}');"
            end
          end
          ret
        end

        def hide_text
          _hide_text('hide')
        end
        def show_text
          _hide_text('show')
        end
      end
    end
  end
end
