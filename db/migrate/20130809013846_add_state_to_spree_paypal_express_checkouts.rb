# frozen_string_literal: true

class AddStateToSpreePaypalExpressCheckouts < SpreeExtension::Migration[4.2]
  def change
    unless column_exists?(:spree_paypal_express_checkouts, :state)
      add_column :spree_paypal_express_checkouts, :state, :string, default: "complete"
    end
  end
end
