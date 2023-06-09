class EventPolicy < ApplicationPolicy
  def index?
    true
  end

<<<<<<< HEAD
=======
  def show?
    true
  end

>>>>>>> master
  def new?
    true
  end

  def create?
    true
  end

  def show?
    true
  end

  def show?
    true
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.all
    end
  end
end
