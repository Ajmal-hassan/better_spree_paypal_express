# frozen_string_literal: true

class AddRefundedFieldsToSpreePaypalExpressCheckouts < SpreeExtension::Migration[4.2]
  def change
    unless column_exists?(:spree_paypal_express_checkouts, :refund_transaction_id)
      add_column :spree_paypal_express_checkouts, :refund_transaction_id, :string
    end

    unless column_exists?(:spree_paypal_express_checkouts, :refunded_at)
      add_column :spree_paypal_express_checkouts, :refunded_at, :datetime
    end

    unless column_exists?(:spree_paypal_express_checkouts, :refund_type)
      add_column :spree_paypal_express_checkouts, :refund_type, :string
    end

    unless column_exists?(:spree_paypal_express_checkouts, :created_at)
      add_column :spree_paypal_express_checkouts, :created_at, :datetime
    end
  end
end
