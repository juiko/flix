class Ability
  include CanCan::Ability
  def initialize(cliente)
    if user.admin?
        can :manage, :all

    else
        can :read, :all

    end
   end
end
