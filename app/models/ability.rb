class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, :all

    if user
      can :access, :rails_admin
      can :dashboard

      if user.role? :admin
        can :manage, :all
      end
    end
  end
end