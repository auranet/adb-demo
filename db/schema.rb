# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101028181354) do

  create_table "mlrs", :force => true do |t|
    t.float    "active_accounts"
    t.float    "deactivated_gross_profit_pct"
    t.float    "activated_nonrecur_cogs"
    t.float    "activated_nonrecur_profit_pct"
    t.float    "activated_nonrecur_profit"
    t.float    "activated_nonrecur_revenue"
    t.float    "month"
    t.float    "week"
    t.string   "start_day"
    t.float    "deactivated_recur_profit"
    t.float    "num_deactivated"
    t.float    "activated_avg_revenue"
    t.float    "avg_revenue"
    t.float    "activated_gross_profit_pct"
    t.float    "activated_recur_profit"
    t.float    "activated_recur_cogs"
    t.float    "num_activated"
    t.float    "churn_pct"
    t.float    "active_deals"
    t.float    "deactivated_recur_cogs"
    t.float    "num_deals_signed"
    t.float    "deactivated_recur_revenue"
    t.float    "num_activated_reporting"
    t.float    "year"
    t.float    "weekly_recurrent_cogs_delta"
    t.float    "active_circuits_delta"
    t.float    "num_deactivated_reporting"
    t.float    "weekly_recurrent_profit_delta"
    t.float    "activated_avg_profit"
    t.float    "num_pending"
    t.float    "avg_profit"
    t.float    "weekly_recurrent_revenue_delta"
    t.float    "activated_recur_revenue"
    t.text     "annotations"
    t.text     "imported_from_file"
    t.integer  "line_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
