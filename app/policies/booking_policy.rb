class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def create?
    true
  end

  def update?
    record.event.event_creator == user || record.user == user
  end

  def destroy?
    record.event.event_creator == user || record.user == user
  end

end
