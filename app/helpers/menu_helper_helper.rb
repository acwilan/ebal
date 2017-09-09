module MenuHelperHelper

  def user_messages
    User.first.inbox
  end
  
  def user_notifications
    User.first.notifications
  end
  
  def user_tasks
    User.first.tasks
  end
  
  def current_user
    User.first
  end
  
end
