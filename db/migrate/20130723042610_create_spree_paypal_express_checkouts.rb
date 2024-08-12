# frozen_string_literal: true

class CreateSpreePaypalExpressCheckouts < SpreeExtension::Migration[4.2]
  def change
    unless table_exists?(:spree_paypal_express_checkouts)
      create_table :spree_paypal_express_checkouts do |t|
        t.string :token
        t.string :payer_id
      end
    end
  end
end
