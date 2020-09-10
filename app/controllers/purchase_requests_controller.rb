class PurchaseRequestsController < ApplicationController
  # new and create actions edit update delete

  def index_owner
    # grabs requests where the owner of the watch is the current user
    @sold_watches = Watch.where(user_id: current_user.id)
    # @pending_watches = PurchaseRequest.joins(:watches).where(watch: { user: current_user} ).where(purchase_approved: false)
  end
end
