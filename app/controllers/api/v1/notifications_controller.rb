class Api::V1::NotificationsController < ApplicationController

  def update
    # find the notification, update read to true
    notification = Notification.find_by(id: params[:id])
    if notification.update(read: true)
      render json: notification
    else 
      render json: {error: "Something went wrong"}
    end
    
  end
end
