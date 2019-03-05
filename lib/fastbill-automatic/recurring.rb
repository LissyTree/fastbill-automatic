module Fastbill
  module Automatic
    class Recurring < Base
      include Fastbill::Automatic::Services::Update
      include Fastbill::Automatic::Services::Delete

      attr_accessor :invoice_id, :type, :customer_id, :customer_costcenter_id,
                    :currency_code, :template_id, :template_hash, :introtext, :start_date,
                    :frequency, :occurences, :output_type, :email_notify, :invoice_number,
                    :paid_date, :is_canceled, :invoice_date, :due_date, :delivery_date,
                    :cash_discount_percent, :cash_discount_days, :eu_delivery, :sub_total,
                    :vat_total, :total, :vat_items, :items, :status, :delete_existing_items
    end
  end
end
