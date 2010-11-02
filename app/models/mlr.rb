class Mlr < ActiveRecord::Base

  fields do
    active_accounts :float
    deactivated_gross_profit_pct :float
    activated_nonrecur_cogs :float
    activated_nonrecur_profit_pct :float
    activated_nonrecur_profit :float
    activated_nonrecur_revenue :float
    month :float
    week :float
    start_day :string
    deactivated_recur_profit :float
    num_deactivated :float
    activated_avg_revenue :float
    avg_revenue :float
    activated_gross_profit_pct :float
    activated_recur_profit :float
    activated_recur_cogs :float
    num_activated :float
    churn_pct :float
    active_deals :float
    deactivated_recur_cogs :float
    num_deals_signed :float
    deactivated_recur_revenue :float
    num_activated_reporting :float
    year :float
    weekly_recurrent_cogs_delta :float
    active_circuits_delta :float
    num_deactivated_reporting :float
    weekly_recurrent_profit_delta :float
    activated_avg_profit :float
    num_pending :float
    avg_profit :float
    weekly_recurrent_revenue_delta :float
    activated_recur_revenue :float
    annotations :text
    imported_from_file :text
    line_number :integer
    timestamps
  end

  Month = ['',
           'Jan',
           'Feb',
           'Mar',
           'Apr',
           'May',
           'Jun',
           'Jul',
           'Aug',
           'Sep',
           'Oct',
           'Nov',
           'Dec',]


  def month_format
    "#{Month[month.to_i]}-#{year.to_i}"
  end

  def self.sorted_columns
    self.columns.sort {|a,b| a.name <=> b.name}
  end

end

