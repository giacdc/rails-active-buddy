class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end

  def show?
    record.event.event_creator == user || record.event.booked_users.include?(user)
  end
end
