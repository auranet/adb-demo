class DemoController < ApplicationController

  def charter
    @klass=params[:klass]
  end

  def bar
  end

  def bar2
  end

  def bar_selector
    if params["fields"]
      @all = Mlr.all(:order => "year asc, month asc", :conditions => "week = 0 and year != 0")
      @cols = []
      @cols.push({:type => :string, :field => :month})
      params["fields"].each do |field|
        @cols.push({:type => :number, :field => field.to_sym})
      end

      @bar = Meteor::Widget::BarGraph::Spec.new(:columns => @cols,
                                               :data => @all,
                                               :page_div => "bar_demo")

      def @bar.max(data)
        data.collect{|x| x.active_accounts}.max
      end

      respond_to do |format|
        format.html #bar_selector.erb
        format.json do
          @chart_id = params["fields"].join('_') + '_chart'
          render :json => {
            :title => params["fields"].join(', '),
            :chart_id => @chart_id,
            :js => render_to_string(:action => 'demo/bar_chart.rjs'),
            :content => render_to_string(:action => 'demo/bar_chart.erb',
              :layout => false)
          }
        end
      end
    end
  end

  def widgets
    render :json => [
      {'blah' => 0}
    ]
  end
end
