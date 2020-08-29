class PurchaseRequestsController < ApplicationController
  def index_owner
    # grabs requests where the owner of the watch is the current user
    sold_watches = PurchaseRequest.joins(:watches).where(watch: { user: current_user} ).where(purchase_approved: true)
    pending_watches = PurchaseRequest.joins(:watches).where(watch: { user: current_user} ).where(purchase_approved: false)
  end
end
