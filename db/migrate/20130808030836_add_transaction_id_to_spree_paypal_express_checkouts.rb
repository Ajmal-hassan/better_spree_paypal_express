# frozen_string_literal: true

class AddTransactionIdToSpreePaypalExpressCheckouts < SpreeExtension::Migration[4.2]
  def change
    unless column_exists?(:spree_paypal_express_checkouts, :transaction_id)
      add_column :spree_paypal_express_checkouts, :transaction_id, :string
    end

    unless index_exists?(:spree_paypal_express_checkouts, :transaction_id)
      add_index :spree_paypal_express_checkouts, :transaction_id
    end
  end
end
